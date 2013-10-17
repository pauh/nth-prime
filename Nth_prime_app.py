import pyximport; pyximport.install()
import nth_prime

from flask import Flask, jsonify, make_response

app = Flask(__name__)

@app.route('/Nth_prime/<int:N>')
def Nth_prime(N):
    return jsonify( { 'Nth prime': nth_prime.nth_prime(N) } )

@app.errorhandler(404)
def not_found(error):
    return make_response(jsonify( { 'error': 'Not found' } ), 404)

