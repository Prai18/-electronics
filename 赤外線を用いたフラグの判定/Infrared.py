#!/usr/bin/env python
# -*- coding: utf-8 -*-

import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)
GPIO.setup(4,GPIO.OUT)

while True:
	print GPIO.input(4)
	if GPIO.input(4)==False:
		break

GPIO.cleanup()