from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

# In-memory storage for simplicity (replace with a database in a real application)
employee_data = []

@app.route('/')
def index():
    return render_template('index.html', employees=employee_data)

@app.route('/add_employee', methods=['POST'])
def add_employee():
    name = request.form['name']
    age = request.form['age']
    role = request.form['role']
    date_of_joining = request.form['date_of_joining']

    employee = {
        'name': name,
        'age': age,
        'role': role,
        'date_of_joining': date_of_joining
    }

    employee_data.append(employee)
    return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
