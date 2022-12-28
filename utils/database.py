# import sqlite3 module
import sqlite3
import pandas as pd

def read_from_sqlite(sql_file:str, path_db:str) -> pd.DataFrame():

    # Establecer conxión con base de datos
    con = sqlite3.connect(path_db)

    # Leer archivo SELECT .sql 
    fd = open(sql_file, 'r')
    sqlFile = fd.read()
    fd.close()

    # Retornar pd.D
    return pd.read_sql_query(sqlFile, con)