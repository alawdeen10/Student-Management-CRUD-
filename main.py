import mysql.connector

conn = mysql.connector.connect(host = "localhost", port = "3306", user = "root", password = "alanm352", database = "student_management")

cursor = conn.cursor()

selectquery = "select * from students"

cursor.execute(selectquery)

records = cursor.fetchall()

print("No of students in the school ", cursor.rowcount)

print("Students details")

for row in records:
    print("Student ID: ", row[0])
    print("First name: ", row[1])
    print("Last name: ", row[2])
    print("Date of birth: ", row[3])
    print("Email: ", row[4])
    print("Phone number: ", row[5])
    print("Address: ", row[6])
    print()

cursor.close()
conn.close()