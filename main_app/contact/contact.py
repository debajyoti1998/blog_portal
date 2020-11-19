from flask import Flask,render_template,request,session,Blueprint,redirect
from main_app.app import mydb
from mysql.connector import errors
contact_func=Blueprint('contact',__name__,url_prefix='/contact')
@contact_func.route('/us')
def contact():
        return render_template('contact/contact.html')
