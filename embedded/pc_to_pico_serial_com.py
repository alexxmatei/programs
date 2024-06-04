led=machine.Pin("LED",machine.Pin.OUT)

while True:
    # Check if there is any data available on sys.stdin without blocking
    if poll_obj.poll(0):
        # Read one character from sys.stdin
        ch = sys.stdin.read(1)
        # Check if the character read is 't'
        if ch=='ty':
            # Toggle the state of the LED
            led.value(not led.value())
            # Print a message indicating that the LED has been toggled
            print ("LED toggled" )
    # Small delay to avoid high CPU usage in the loop
    time.sleep(0.1)
