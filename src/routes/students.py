from flask import jsonify, request
import src.controllers.students as StudentsController


def use(app):

    @app.route('/students', methods=['GET'])
    def getStudents():
        age = request.args.get('age')
        return StudentsController.getStudents(age)

