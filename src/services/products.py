from src.db.dbConnect import db_connection
from psycopg2 import OperationalError

def getProducts():
        try: 
            connection = db_connection('Store')
            cursor = connection.cursor()

            cursor.execute('SELECT * FROM Products')
            products = cursor.fetchall()

            cursor.close()
            connection.close()

            data = []
            for product in products:
                data.append({
                    'product_id': product[0],
                    "product_name": product[1],
                    "product_value": product[2]
                })

            return data

        except OperationalError as err:
            return {'error': err}