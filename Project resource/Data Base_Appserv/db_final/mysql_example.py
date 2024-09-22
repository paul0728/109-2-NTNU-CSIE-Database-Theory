import mysql.connector
from mysql.connector import Error
from mysql.connector import MySQLConnection
#===================================================================
def query_with_fetchone():
    
    try:
        conn = connect()
        
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM instructor")

        row = cursor.fetchone()

        while row is not None:
            print(row)
            row = cursor.fetchone()
        
    except Error as e:
        print(e)
    
    finally:
        cursor.close()
        conn.close()
        print('close connection!')
        
#===================================================================
def insert_instructor(iid, name, dep, salary):
    
    query = "INSERT INTO instructor VALUES(%s,%s,%s,%s)"
    args = (iid, name, dep, salary)

    try:
        conn = connect()
        
        cursor = conn.cursor()
        cursor.execute(query, args)
          
        if cursor is not None:
           if cursor.lastrowid:
               print('last insert id', cursor.lastrowid)
           else:
               print('last insert id not found')
             
        conn.commit()
        
    except Error as error:
        print(error)
        
    finally:
        cursor.close()
        conn.close()
        print('close connection!')
#===================================================================
def update_instructor(iid, name):

    # prepare query and data
    query = """ UPDATE instructor
                SET name = %s
                WHERE ID = %s """

    data = (name, iid)

    try:
        conn = connect()
        # update book title
        cursor = conn.cursor()
        cursor.execute(query, data)

        # accept the changes
        conn.commit()

    except Error as error:
        print(error)

    finally:
        cursor.close()
        conn.close()
        print('close connection!')
#==================================================================
def delete_instructor(iid):
    
    query = "DELETE FROM instructor WHERE ID = %s"

    try:
        # connect to the database server
        conn = connect()

        # execute the query
        cursor = conn.cursor()
        cursor.execute(query, (iid,))

        # accept the change
        conn.commit()

    except Error as error:
        print(error)

    finally:
        cursor.close()
        conn.close()
        print('close connection!')

#===================================================================
def connect():
    """ Connect to MySQL database """
    conn = None
    try:
        conn = mysql.connector.connect(host='localhost',
                                       database='university',
                                       user='root',
                                       password='TEST1234')
        if conn.is_connected():
            print('Connected to MySQL database...')

    except Error as e:
        print(e)
        
    return(conn)    
    
#===================================================================    
if __name__ == '__main__':
    
    query_with_fetchone()
    #insert_instructor('00002','Koh','Comp. Sci.', '50000.00' )
    #update_instructor('00002', 'Koh Jia-Ling')
    #delete_instructor('00002')
    #query_with_fetchone()
     
    if conn is not None and conn.is_connected():
       conn.close()
    
