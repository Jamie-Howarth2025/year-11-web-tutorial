from bottle import run, route, template, view, static_file

@route('/')
@view('home')
def home():
    return {}

@route('/hello')
def hello():
    return "Hello World!"

run(host='localhost', port = 8080)