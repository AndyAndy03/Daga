import os
import random
import mysql.connector
import base64
from PIL import Image
import io
import time
"""
DELETE FROM prodotto;
ALTER TABLE prodotto AUTO_INCREMENT = 1;
DELETE FROM img_prodotti;
ALTER TABLE img_prodotti AUTO_INCREMENT = 1;
"""


# Database connection details (replace with your credentials)
db_name = "daga"
username = "root"
password = ""
host = "localhost"

def upload_prodotto(cat,nome,desc,sex):
    time.sleep(1)
    # Open the image in binary mode

    # Prepare SQL INSERT statement with BLOB parameter
    sql = "INSERT INTO prodotto (id_prod,categoria,nome,quantita_disponibile,prezzo,descrizione,sex) VALUES (NULL,%s,%s,"+str(random.randint(0, 3000))+","+str(round(random.uniform(20, 300),2))+",%s,%s)"

    try:
        # Connect to the database
        connection = mysql.connector.connect(
            database=db_name,
            user=username,
            password=password,
            host=host
        )

        # Create a cursor object
        cursor = connection.cursor()

        # Execute the INSERT statement with the encoded image data
        cursor.execute(sql, (cat,nome,desc,sex,))

        # Commit the changes
        connection.commit()

        print("Prodotto uploaded successfully!")

    except mysql.connector.Error as err:
        print("Error:", err)
    finally:
        # Close the connection, even if an error occurs
        if connection:
            connection.close()
            
def upload_img(image_path,n):
    time.sleep(1)
    print(image_path,n)
    # Open the image in binary mode
    
    # Prepare SQL INSERT statement with BLOB parameter
    sql = "INSERT INTO img_prodotti (id_img,img,id_prod) VALUES (NULL,%s,"+str(n)+")"

    try:
        # Connect to the database
        connection = mysql.connector.connect(
            database=db_name,
            user=username,
            password=password,
            host=host
        )

        # Create a cursor object
        cursor = connection.cursor()

        # Execute the INSERT statement with the encoded image data
        cursor.execute(sql, (image_path.replace("./",""),))

        # Commit the changes
        connection.commit()

        print("Image uploaded successfully!")

    except mysql.connector.Error as err:
        print("Error:", err)
    finally:
        # Close the connection, even if an error occurs
        if connection:
            connection.close()
def trova_cartelle(percorso):
    if os.path.isdir(percorso):
        cartelle = []
        for elemento in os.listdir(percorso):
            percorso_elemento = os.path.join(percorso, elemento)
            if os.path.isdir(percorso_elemento):
                cartelle.append(elemento)
        return cartelle

def trova_file(percorso):
    if os.path.isdir(percorso):
        files = []
        for elemento in os.listdir(percorso):
            percorso_elemento = os.path.join(percorso, elemento)
            if os.path.isfile(percorso_elemento):
                files.append(elemento)
        return files

def leggi_file(nome_file):
    try:
        with open(nome_file, 'r') as file:
            contenuto = file.read()
        return contenuto
    except FileNotFoundError:
        return f"Il file '{nome_file}' non esiste."
    except IOError:
        return f"Errore durante la lettura del file '{nome_file}'."

def add_pro(categoria,list_img,desc,n,path,sex):
    prezzo=round(random.uniform(20, 200),2)
    nome=desc.split("\n")[0]
    print(nome+" "+categoria+" "+str(prezzo)+"$")
    
    
    upload_prodotto(categoria,nome,desc,sex)
    
    for img in list_img:
        print(path+"/"+img)
        upload_img(path+"/"+img,n)
    print("-----")


n=1

cartellaD = "./Donna"
categoriaD=trova_cartelle(cartellaD)
for c in categoriaD:
    prodotti=trova_cartelle(cartellaD+"/"+c)
    for p in prodotti:
        path=cartellaD+"/"+c+"/"+p;
        filepro=trova_file(path)
        desc=leggi_file(path+"/"+p+".txt")
        filepro= [file for file in filepro if not file.endswith('.txt')]
        categoria=c
        list_img=filepro
        add_pro(categoria,list_img,desc,n,path,"F")
        n=n+1
#####################################
cartellaU = "./Uomo"
categoriaU=trova_cartelle(cartellaU)
for c in categoriaU:
    prodotti=trova_cartelle(cartellaU+"/"+c)
    for p in prodotti:
        path=cartellaU+"/"+c+"/"+p;
        filepro=trova_file(path)
        desc=leggi_file(path+"/"+p+".txt")
        filepro= [file for file in filepro if not file.endswith('.txt')]
        categoria=c
        list_img=filepro
        add_pro(categoria,list_img,desc,n,path,"M")
        n=n+1
print("FINE :)")
