import serial
import struct
import time

# --- CONFIGURATION ---
SERIAL_PORT = '/dev/ttyACM0'  # Check if this is ttyUSB0 or ttyACM0
BAUD_RATE = 1000000           # Must match Arduino

try:
    ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=1)
    print(f"Connected to {SERIAL_PORT} @ {BAUD_RATE} bps")
except Exception as e:
    print(f"Error: Could not connect to {SERIAL_PORT}.")
    print(f"Details: {e}")
    exit()

def create_packet(motor_id, position):
    """Creates a 4-byte packet: [Header, ID, HighByte, LowByte]"""
    # Clamp position to safe range (0-1023)
    pos = max(0, min(1023, position))
    
    # Pack bytes: Header(255), ID, High_Byte, Low_Byte
    # 'B' means unsigned char (1 byte)
    return struct.pack('BBBB', 255, motor_id, (pos >> 8) & 0xFF, pos & 0xFF)

# Main Loop
print("\n--- Dual Motor Control ---")
print("Enter two positions separated by space (e.g., '512 512')")
print("Format: [Motor 1 Position] [Motor 2 Position]")
print("Type 'q' to quit.\n")

while True:
    user_input = input("Cmd > ")
    
    if user_input.lower() == 'q':
        break
        
    try:
        # 1. Parse Input
        parts = user_input.split()
        
        # Verify we got exactly two numbers
        if len(parts) != 2:
            print("Error: Please enter exactly two numbers (e.g., '200 800')")
            continue
            
        pos1 = int(parts[0])
        pos2 = int(parts[1])
        
        # 2. Build Packets
        # We assume Motor IDs are 1 and 2. Change if yours are different.
        packet1 = create_packet(1, pos1)
        packet2 = create_packet(2, pos2)
        
        # 3. Send Both Packets Together
        # Sending 8 bytes total. Arduino processes them one by one.
        ser.write(packet1 + packet2)
        
        print(f"Sent: Motor 1 -> {pos1}, Motor 2 -> {pos2}")
        
    except ValueError:
        print("Error: Invalid input. Use numbers only.")
    except Exception as e:
        print(f"Communication Error: {e}")

ser.close()
