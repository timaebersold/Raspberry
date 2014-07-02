require 'wiringpi'
@io = WiringPi::GPIO.new

def init()
  @io.mode(0, OUTPUT)
  @io.mode(1, OUTPUT)
  @io.mode(2, OUTPUT)
  @io.mode(3, OUTPUT)
  @io.mode(4, OUTPUT)
  @io.mode(5, OUTPUT)
end




def bett()
  sleep 0.5
end


def allean()
  @io.write(3,1)
  @io.write(4,1)
  @io.write(5,1)
  @io.write(1,1)
  @io.write(0,1)
  @io.write(2,1)
end

def alleaus()
  @io.write(3,0)
  @io.write(4,0)
  @io.write(5,0)
  @io.write(1,0)
  @io.write(2,0)
  @io.write(0,0)
end

def grünan()
  
  @io.write(2,1)
  @io.write(5,1) 
end

def grünaus()

  @io.write(2,0)
  @io.write(5,0)

end

def gelban()
  
  @io.write(1,1)
  @io.write(4,1) 
end

def gelbaus()

  @io.write(1,0)
  @io.write(4,0)

end

def rotan()
  
  @io.write(0,1)
  @io.write(3,1) 
end

def rotaus()

  @io.write(0,0)
  @io.write(3,0)

end


def aufsteigend()
  @io.write(3,1)
  bett
  @io.write(4,1)
  bett
  @io.write(5,1)
  bett
  @io.write(1,1)
  bett
  @io.write(0,1)
  bett
  @io.write(2,1)
  bett
end













init()


loop do
  
  aufsteigend()
  sleep 2
  alleaus

end  

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
