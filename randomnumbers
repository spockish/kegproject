from bottle import route, run, template
import random

@route('/')
def index():
	value1=int(round(random.gauss(50,20)))
	value2=int(round(random.gauss(50,20)))
	print 'hi'
	return template('temptemplate', percent1=value1, percent2=value2)

@route('/update')
def update():
	value1=int(round(random.gauss(50,20)))
	value2=int(round(random.gauss(50,20)))
	print 'update values'
	return {1:value1,2:value2}

run(host='localhost', port=8080)
