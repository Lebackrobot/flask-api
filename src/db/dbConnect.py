
# Database config
import psycopg2

USER = 'postgres'
PASSWORD = 'Ciencias14#'

def db_connection(db_name):
    db_config = {
    'host': 'localhost',
    'user': USER,
    'password': PASSWORD
    }

    db_config['database'] = db_name
    return psycopg2.connect(**db_config)