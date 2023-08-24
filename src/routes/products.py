from flask import jsonify
import src.controllers.products as ProductsController


def use(app):

    # Define routes
    @app.route('/', methods=['GET'])
    def index():
        return jsonify({'message': 'Testando'})


    @app.route('/products', methods=['GET'])
    def getProducts():
        return ProductsController.getProducts()

