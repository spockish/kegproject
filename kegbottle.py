from bottle import route, run, template
import random
import serial

ser = serial.Serial('/dev/tty.usbmodem411', 9600, timeout=2)

print 'call serial'

@route('/')
def index():
	ser.write('r')
	value1=ser.readline()
	value2=20%
	#value2=int(round(random.gauss(50,20)))
	print 'initial values'
	return template('temptemplate', percent1=value1, percent2=value2)

@route('/update')
def update():
	ser.write('r')
	value1=ser.readline()
	value2=20%
	#value2=int(round(random.gauss(50,20)))
	print 'update values'
	return {1:value1,2:value2}

run(host='localhost', port=8080)
