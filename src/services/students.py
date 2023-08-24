from src.db.dbConnect import db_connection
from psycopg2 import OperationalError

def getStudents(age):
    try:
        query = 'SELECT * FROM Students'

        if (age):
            query += f' WHERE age = {age}'

        connection = db_connection('School')
        cursor = connection.cursor()


        cursor.execute(query)
        students = cursor.fetchall()


        cursor.close()
        connection.close()

        data = []
        for student in students:
            data.append({
                'student_id': student[0],
                'name': student[1],
                'age': student[2],
                'score': student[3]
            })


        return data

    except OperationalError as err:
        return {'error': err}