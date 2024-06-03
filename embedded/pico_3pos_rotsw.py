from machine import Pin
import time

# Define GPIO pins for each position of the single pole
pole1 = {
    'pos1': Pin(26, Pin.IN, Pin.PULL_UP),
    'pos2': Pin(27, Pin.IN, Pin.PULL_UP),
    'pos3': Pin(28, Pin.IN, Pin.PULL_UP)
}

def read_switch(pole):
    # Debounce logic: read the pins, wait, read again and compare
    state1 = {pos: pole[pos].value() for pos in pole}
    time.sleep(0.05)  # 50 ms debounce delay
    state2 = {pos: pole[pos].value() for pos in pole}

    if state1 == state2:  # Only proceed if states are stable
        if state1['pos1'] == 0:
            return 'Position 1'
        elif state1['pos2'] == 0:
            return 'Position 2'
        elif state1['pos3'] == 0:
            return 'Position 3'
    return None  # Return None if the state is not stable

# Initialize previous position to track changes
previous_position = None

while True:
    current_position = read_switch(pole1)
    if current_position != None and current_position != previous_position:
        print(f'pole1: {current_position}')
        previous_position = current_position
    time.sleep(0.1)  # Adjust loop delay as needed
