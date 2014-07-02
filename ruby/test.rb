require 'wiringpi'
io = WiringPi::GPIO.new

io.write(0,1)
io.write(4,0)
io.write(5,0)
io.write(1,1)
io.write(0,0)
io.write(2,1)
io.write(1,0)
io.write(3,1)
io.write(2,0)
io.write(4,1)
io.write(5,1)
io.write(3,0)
        

#io.write(pin,value)
#io.read(pin,value)
#
#Shift out:
#
#io.write(latch_pin, LOW)
#io.shiftOut(data_pin, clock_pin, LSBFIRST or MSBFIRST, value)
#io.write(latch_pin, HIGH)
#
#Shift out an array of 1/0s (always uses LSBFIRST):
#
#io.shiftOutArray(data_pin, clock_pin, latch_pin, [0,1,0,0,1,1,1,0])