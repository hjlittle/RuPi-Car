require 'rpi_gpio'

puts "Setting up GPIO pins.........."

MOTOR_A = 23
MOTOR_B = 24
MOTOR_C = 25

RPi::GPIO.set_numbering :bcm

RPi::GPIO.setup MOTOR_A, as: :output
RPi::GPIO.setup MOTOR_B, as: :output
RPi::GPIO.setup MOTOR_C, as: :output

puts "Driving motor forward............."

RPi::GPIO.set_low  MOTOR_A
RPi::GPIO.set_high MOTOR_B
RPi::GPIO.set_high MOTOR_C

sleep(3)

puts "Driving motor backwards.........."

RPi::GPIO.set_high MOTOR_A
RPi::GPIO.set_low  MOTOR_B
RPi::GPIO.set_high MOTOR_C

sleep(3)

puts "Stoppping motor............."
RPi::GPIO.set_low MOTOR_C


puts "Cleaning up GPIO pins.........."
RPi::GPIO.clean_up

puts "BYE BYE."
