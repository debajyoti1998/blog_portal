from flask import Flask,render_template,request,Blueprint,session,redirect
from main_app.app import mydb
from mysql.connector import errors

from main_app.helper import __is_alpha_space,__is_email, __create_encryption

user_func=Blueprint('user',__name__,url_prefix='/user')
@user_func.route('/create',methods=['GET','POST'])
def user():
    if request.method =='POST':
        post_data=request.form
        if __is_alpha_space(post_data['name']) and __is_email(post_data['email']) and len (post_data['password'])>4:
            db_pass_to_save=__create_encryption(post_data['password'])

            try:
                mycursor = mydb.cursor(dictionary=True)
                sql='INSERT INTO users (name,email,password) VALUES(%s,%s,%s)'
                val=(post_data['name'],post_data['email'],post_data['password'])
                mycursor.execute(sql,val)
                mydb.commit()
                if (mycursor.rowcount == 1):
                    error_dist={
                        'message':'data save successfully'
                    }
                    return render_template ('user/create.html',error=error_dist)
                else:
                    error_dist={
                        'message':'data not save'
                    }
                    return render_template ('user/create.html',error=error_dist)
            except errors.Error as e:
                print("Db error :",e)   
                error_dist={
                'message':'server error , Please try again letter'
            }
                return render_template ('user/create.html',error=error_dist)   
        else:
            error_dist={
                'message':'please provide proper information'
            }
            return render_template ('user/create.html',error=error_dist)
    else:
        return render_template('user/create.html')  


@user_func.route('/login',methods=['GET','POST'])
def login():
    if request.method =='POST':
        post_data=request.form
        try:
            mycursor = mydb.cursor(dictionary=True)
            sql='SELECT id, name, email,password FROM users WHERE email=%s'  
            val=(post_data['email'],)
            mycursor.execute(sql,val)
            user_details = mycursor.fetchone()
            if user_details == None:
                error_dist={
                    'message': 'sorry this type of user not found'
                }
                return render_template('user/login.html',error=error_dist)

                
            else:
                if user_details['password'] ==(post_data['password']):
                    session["user"] ={
                        'id' : user_details['id'],
                        'name' : user_details['name'],
                        'email' : user_details['email']
                    } 
                    return redirect('/')
                else:
                    error_dist={
                        'message': 'email or password wrong... please try again'
                    }
                    return render_template('user/login.html',error=error_dist)
        except errors.Error as e:
            print("Db error :",e)
            return 'sarver error'
    else:
        return render_template('user/login.html')






@user_func.route('/new')
def new():
        if 'user' in session:
            return render_template('index.html')
        else:
            return redirect('user/login')


@user_func.route('/create_new',methods=['GET','POST'])
def create_new():
    if 'user' in session:
        if request.method =='POST':
            post_data=request.form
            if __is_alpha_space(post_data['blog_heading']) and __is_alpha_space(post_data['blog_body']) and __is_alpha_space(post_data['author_name']): 
                try:
                    mycursor = mydb.cursor(dictionary=True)
                    sql='INSERT INTO blog (blog_heading,blog_body,author_name) VALUES(%s,%s,%s)'
                    val=(post_data['blog_heading'],post_data['blog_body'],post_data['author_name'])
                    mycursor.execute(sql,val)
                    mydb.commit()
                    if (mycursor.rowcount == 1):
                        return 'data save'
                    else:
                        return 'data not save'
                except errors.Error as e:
                    print("Db error :",e)   
                    return 'server error , Please try again letter'
            else:
                return 'please provide valid data'            
        else :
            return render_template('user/new.html') 
    else:
        return redirect('/user/login') 


@user_func.route('/logout', methods=['GET']) 
def user_logout_fun():
    session.pop('user', None)
    return redirect('/user/login')        






