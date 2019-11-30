import RPi.GPIO as GPIO
import time
i=0
pin=18
sw=22
init=5

GPIO.setmode(GPIO.BCM)
GPIO.setup(pin,GPIO.OUT)
GPIO.setup(sw,GPIO.IN,pull_up_down=GPIO.PUD_DOWN)

servo=GPIO.PWM(pin,50)
servo.start(2.5)

try:
	while True:
		if GPIO.input(sw) == GPIO.HIGH:
			servo.ChangeDutyCycle(init)
			time.sleep(0.1)
			# print("%d" % init)
			init+=2.5
			if init==25:
				init=5

except KeyboardInterrupt:
	pass

servo.stop()
GPIO.cleanup()