from flask import Flask, render_template,request,session,redirect

import mysql.connector
from mysql.connector import errors

try:
    mydb=mysql.connector.connect(host='127.0.0.1',user='root',password='',database='news')
    if mydb.is_connected():
        print('database connect')
    else:
        print('database not connected')
except errors.Error as e:
    print("Db error :",e)  

app=Flask(__name__) 
app.secret_key = "babun1234__sec"
#-------------user--------------
from main_app.user.user import user_func
app.register_blueprint(user_func)
#---------------contact---------------
from main_app.contact.contact import contact_func
app.register_blueprint(contact_func)

@app.route('/', methods=['GET']) 
def all_user_func():
    if 'user' in session:
        try:
            mycursor = mydb.cursor(dictionary=True)
            sql="SELECT id, blog_heading,blog_body,author_name FROM blog "
            mycursor.execute(sql)
            user_details = mycursor.fetchall()

            if user_details == None:
                return 'no user found'
            else:
                print(user_details)
                return render_template('index.html',  data=user_details)
                        
        except errors.Error as e:
            print("Db error :",e)
            return 'not able to check ,Please try again letter'
    else:
        return redirect('/user/login')


@app.route('/blog/<int:blog_id>', methods=['GET']) 
def perticular_blog(blog_id):
    if 'user' in session:
        try:
            mycursor = mydb.cursor(dictionary=True)
            sql="SELECT blog_heading,blog_body,author_name FROM blog WHERE id= %s "
            val=(str(blog_id),)
            mycursor.execute(sql,val)
            blog_details = mycursor.fetchall()
            if blog_details == None:
                return 'no blog found'
            else:
                # return(blog_details)
                return render_template('blogdetails.html',  data=blog_details)
                        
        except errors.Error as e:
            print("Db error :",e)
            return 'not able to check ,Please try again letter'
        
    else:
        return redirect('/user/login')

@app.route('/demo', methods=['GET']) 
def demo():
 
        try:
            mycursor = mydb.cursor(dictionary=True)
            sql="SELECT id, blog_heading,blog_body,author_name FROM blog "
            mycursor.execute(sql)
            user_details = mycursor.fetchall()

            if user_details == None:
                return 'no user found'
            else:
                print(user_details)
                return render_template('demo.html',  data=user_details)
                        
        except errors.Error as e:
            print("Db error :",e)
            return 'not able to check ,Please try again letter'
       