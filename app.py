from flask import Flask,render_template,request,redirect,url_for    
import flask

from flask_mysqldb import MySQL
import MySQLdb

app = Flask(__name__)
mysql = MySQL(app) 
# App routes Intialize 
@app.route('/', methods=['POST','GET'])
def timesheet():
   
    
    if request.method == 'GET':
         # Fetch get request and conncet with mysql database
        conn = MySQLdb.connect(host="127.0.0.1",
                           port=3307,
                           
                           user = "singlepoint",
                           passwd = "1234",
                           
                           db = "timesheet")
         # establish connection with mysql 
        x = conn.cursor()
        
         # Select command for database to get mysql database
        x.execute("SELECT * FROM `timerecord` WHERE 1")
        # fetch complete table data 
        result=x.fetchall()
    #    added argument to send mysql data to timesheet.html file
        return render_template('timesheet.html',data=result)
    if request.method == 'POST':
        # Fetch Post request and conncet with mysql database
        conn = MySQLdb.connect(host="127.0.0.1",
                           port=3307,
                           
                           user = "singlepoint",
                           passwd = "1234",
                           
                           db = "timesheet")
        # Parameters of post request
        compnayname=request.form.get('companyname')
        date=request.form.get('date')
        printname=request.form.get('printname')
        idverified=request.form.get('idverified')
        timein=request.form.get('timein')
        timeout=request.form.get('timeout')
        # establish connection with mysql 
        x = conn.cursor()
    
        try:
            # Insert command for database to insert parameters
            x.execute("INSERT INTO `timerecord`(`companyname`, `date`, `printname`, `id_verified`, `timein`, `timeout`) VALUES (%s,%s,%s,%s,%s,%s)",(compnayname,date,printname,idverified,timein,timeout))
            conn.commit()
            print "asas"
            # conn.close()
        except:
            # if error connection should roolback
            conn.rollback()
            print "Error in parameters or mysql command" 
            
    #    close database connection
        conn.close()
    
        # redirect to http://127.0.0.1:6011/
        return redirect(url_for(('timesheet')))

   
# configure host,port and debuger  
if __name__ == '__main__':
	app.run(host ='127.0.0.1',port=6011,debug=True)   