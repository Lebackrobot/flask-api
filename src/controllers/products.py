# -*- coding: utf-8 -*-
import src.services.products as ProductsService
from flask import jsonify

def getProducts():
        data = ProductsService.getProducts()
        return jsonify(data)