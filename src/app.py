# -*- coding: utf-8 -*-
from flask import Flask, jsonify

# Import routes
import src.routes.products as ProductsRouter
import src.routes.students as StudentsRouter

# Define app
app = Flask(__name__)


# Define routes
ProductsRouter.use(app)
StudentsRouter.use(app)

