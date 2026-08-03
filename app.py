from bottle import run, route, template, view, static_file

# route for pages

@route('/')
@view('home')
def home():
    return {}

@route('/my_info')
def my_info():
    return template('my_info')

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./static')

if __name__ == "__main__":
    run(host='localhost', port=8080, debug=True, reloader=True)