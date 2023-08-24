import src.services.students as StudentsService
from flask import jsonify

def getStudents(age):
    data = StudentsService.getStudents(age)
    return jsonify(data)
