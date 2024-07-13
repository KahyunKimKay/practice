from fastapi import FastAPI
import pymysql
app = FastAPI()

# @app.get("/useradd")
# async def read_item(item_id: int, user_name: str):
#     return {"item_id": item_id, "user_name": user_name}

@app.post("/useradd/")
def read_item(username:str,langgrade:int,mathgrade:int,chemgrade:int,gradeaverage:int,totalgrade:str):
    my_db = pymysql.connect(host='ls-d176753e89609e0b0bb600c5a9cb21bc0cabf7e9.c9ggk4c4s3dy.ap-northeast-2.rds.amazonaws.com',
                           user='dbmasteruser',
                           password='Dogok12*',
                           db='practicedatabase',
                           charset='utf8')

    cursor = my_db.cursor(pymysql.cursors.DictCursor)
    sql = "insert into school_grade "
    sql=sql+"(username,langgrade,mathgrade,chemgrade,gradeaverage,totalgrade)"
    sql=sql+"values (%s,%s,%s,%s,%s,%s)"
    cursor.execute(sql,(username,langgrade,mathgrade,chemgrade,gradeaverage,totalgrade))
    my_db.commit()
    sql = "Select * from school_grade"
    cursor.execute(sql)
    info = cursor.fetchall()
    cursor.close()
    print(info)
    return info

# @app.get("/")
# async def read_root():
#     return {"Hello": "World"}


# @app.get("/items/{item_id}")
# async def read_item(item_id: int, q: Union[str, None] = None):
#     return {"item_id": item_id, "q": q}
@app.post("/userdelete/")
def delete_user(username:str):
    my_db = pymysql.connect(host='ls-d176753e89609e0b0bb600c5a9cb21bc0cabf7e9.c9ggk4c4s3dy.ap-northeast-2.rds.amazonaws.com',
                           user='dbmasteruser',
                           password='Dogok12*',
                           db='practicedatabase',
                           charset='utf8')

    cursor = my_db.cursor(pymysql.cursors.DictCursor)
    sql = "delete from school_grade where username=%s "
    cursor.execute(sql,(username))
    my_db.commit()
    sql = "Select * from school_grade"
    cursor.execute(sql)
    info = cursor.fetchall()
    cursor.close()
    print(info)
    return info
# @app.get("/items/{item_id}")
# async def read_item(item_id: int, q: Union[str, None] = None):
#     return {"item_id": item_id, "q": q}
@app.get("/usersearch/")
def search_user(username:str):
    my_db = pymysql.connect(host='ls-d176753e89609e0b0bb600c5a9cb21bc0cabf7e9.c9ggk4c4s3dy.ap-northeast-2.rds.amazonaws.com',
                           user='dbmasteruser',
                           password='Dogok12*',
                           db='practicedatabase',
                           charset='utf8')

    cursor = my_db.cursor(pymysql.cursors.DictCursor)
    sql = "Select * from school_grade where username=%s"
    cursor.execute(sql,(username))
    count=cursor.rowcount
    info = cursor.fetchall()#fetchone ?? ?? 1??
    print(info,count)
    return info