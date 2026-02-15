import serial
import struct
import time

# Connect to the Arduino (check if it is ttyACM0 or ttyUSB0)
try:
    ser = serial.Serial('/dev/ttyACM0', 1000000, timeout=1)
    print("Connected to Arduino!")
except:
    print("Failed to connect. Check cable!")
    exit()

def send_pos(position):
    # Safety clamp
    position = max(0, min(1023, position))
    
    # Pack 4 bytes: [255] [ID=1] [High Byte] [Low Byte]
    # This matches the Arduino code we wrote earlier
    packet = struct.pack('BBBB', 255, 1, (position >> 8) & 0xFF, position & 0xFF)
    
    ser.write(packet)
    print(f"Moved to {position}")

# Main Test Loop
while True:
    user_input = input("Enter Position (0-1023) or 'q' to quit: ")
    if user_input == 'q':
        break
    try:
        pos = int(user_input)
        send_pos(pos)
    except ValueError:
        print("Invalid number.")

ser.close()
