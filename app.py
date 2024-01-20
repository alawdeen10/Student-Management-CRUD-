from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)

db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'alanm352',
    'database': 'student_management'
}

@app.route('/')
def display_data():

    connection = mysql.connector.connect(**db_config)
    cursor = connection.cursor()


    query = """ SELECT students.*, courses.* FROM students INNER JOIN courses ON students.student_id = courses.course_id """

    cursor.execute(query)

    data = cursor.fetchall()

    connection.close()

    return render_template('index.html', data=data, columns=cursor.column_names)

if __name__ == '__main__':
    app.run(debug=True)
