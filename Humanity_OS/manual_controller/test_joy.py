# joystick_motor_hid.py
import serial
import struct
import time
import threading

# --- CONFIGURATION ---
SERIAL_PORT = '/dev/ttyACM0'
BAUD_RATE = 1000000
HIDRAW_DEVICE = '/dev/hidraw0'  # Try hidraw0, hidraw1, etc.

# Motor ranges
MOTOR_MIN = 0
MOTOR_MAX = 1023

# --- SERIAL CONNECTION ---
try:
    ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=1)
    print(f"✓ Connected to {SERIAL_PORT}")
except Exception as e:
    print(f"✗ Serial Error: {e}")
    exit()

# --- JOYSTICK STATE ---
class JoystickState:
    def __init__(self):
        self.left_y = 128    # Center (0-255 range)
        self.right_y = 128   # Center
        self.running = True

joystick = JoystickState()

def map_value(x, in_min, in_max, out_min, out_max):
    """Map value from one range to another"""
    return int((x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min)

def create_packet(motor_id, position):
    """Creates a 4-byte packet: [Header, ID, HighByte, LowByte]"""
    pos = max(0, min(1023, position))
    return struct.pack('BBBB', 255, motor_id, (pos >> 8) & 0xFF, pos & 0xFF)

def read_hidraw():
    """Read from HID raw device"""
    print(f"✓ Opening {HIDRAW_DEVICE}...")
    
    try:
        with open(HIDRAW_DEVICE, 'rb') as hid:
            print("✓ HID device opened")
            
            while joystick.running:
                # Read HID report (F710 sends 20-byte packets)
                data = hid.read(20)
                
                if len(data) >= 20:
                    # F710 XInput format:
                    # Byte 2-3: Left stick X (little endian)
                    # Byte 4-5: Left stick Y (little endian)
                    # Byte 6-7: Right stick X
                    # Byte 8-9: Right stick Y
                    
                    # Extract stick values (16-bit signed integers)
                    left_y = struct.unpack('<h', data[4:6])[0]   # -32768 to 32767
                    right_y = struct.unpack('<h', data[8:10])[0]
                    
                    # Convert to 0-255 range for easier handling
                    joystick.left_y = (left_y + 32768) >> 8   # Scale to 0-255
                    joystick.right_y = (right_y + 32768) >> 8
                    
    except FileNotFoundError:
        print(f"✗ {HIDRAW_DEVICE} not found!")
        print("Available devices:")
        import os
        os.system("ls -l /dev/hidraw*")
        joystick.running = False
    except Exception as e:
        print(f"✗ HID Error: {e}")
        joystick.running = False

# Start HID reading thread
hid_thread = threading.Thread(target=read_hidraw, daemon=True)
hid_thread.start()

print("\n--- F710 Motor Control (HID Mode) ---")
print("Left Stick Y  → Motor 1")
print("Right Stick Y → Motor 2")
print("Press Ctrl+C to quit\n")

time.sleep(1)  # Wait for HID thread to start

try:
    while joystick.running:
        # Map joystick to motor positions
        # Invert Y so up = max, down = min
        motor1_pos = map_value(joystick.left_y, 0, 255, MOTOR_MAX, MOTOR_MIN)
        motor2_pos = map_value(joystick.right_y, 0, 255, MOTOR_MAX, MOTOR_MIN)
        
        # Create and send packets
        packet1 = create_packet(1, motor1_pos)
        packet2 = create_packet(2, motor2_pos)
        ser.write(packet1 + packet2)
        
        # Display
        print(f"\rM1: {motor1_pos:4d} | M2: {motor2_pos:4d} | LY: {joystick.left_y:3d} | RY: {joystick.right_y:3d}  ", end='', flush=True)
        
        time.sleep(0.02)  # 50Hz
        
except KeyboardInterrupt:
    print("\n\n✓ Shutting down...")
    joystick.running = False

finally:
    ser.close()
    print("✓ Done")
