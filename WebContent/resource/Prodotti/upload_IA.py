import os
import random
import mysql.connector
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

def upload_prodotto(cat, nome, desc, sex):
    time.sleep(1)
    # Prepare SQL INSERT statement
    sql = "INSERT INTO prodotto (categoria, nome, quantita_disponibile, prezzo, descrizione, sex) VALUES (%s, %s, %s, %s, %s, %s)"

    quantita_disponibile = random.randint(0, 3000)
    prezzo = round(random.uniform(20, 300), 2)

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

        # Execute the INSERT statement
        cursor.execute(sql, (cat, nome, quantita_disponibile, prezzo, desc, sex))

        # Get the id of the inserted product
        prodotto_id = cursor.lastrowid

        # Commit the changes
        connection.commit()

        #print("Prodotto uploaded successfully!")
        return prodotto_id

    except mysql.connector.Error as err:
        print("Error:", err)
        print(nome)
    finally:
        # Close the connection, even if an error occurs
        if connection:
            connection.close()

def upload_img(image_path, prodotto_id):
    time.sleep(1)
    #print(image_path, prodotto_id)
    # Prepare SQL INSERT statement with BLOB parameter
    sql = "INSERT INTO img_prodotti (img, id_prod) VALUES (%s, %s)"

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

        # Execute the INSERT statement with the image path
        cursor.execute(sql, (image_path.replace("./", ""), prodotto_id))

        # Commit the changes
        connection.commit()

        #print("Image uploaded successfully!")

    except mysql.connector.Error as err:
        print("Error:", err)
        print(prodotto_id)
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

def add_pro(categoria, list_img, desc, path, sex):
    nome = desc.split("\n")[0]
    #print(nome + " " + categoria + " " + sex)

    prodotto_id = upload_prodotto(categoria, nome, desc, sex)
    
    if prodotto_id:
        for img in list_img:
            #print(path + "/" + img)
            upload_img(path + "/" + img, prodotto_id)
       # print("-----")

cartellaD = "./Donna"
categoriaD = trova_cartelle(cartellaD)
for c in categoriaD:
    prodotti = trova_cartelle(cartellaD + "/" + c)
    for p in prodotti:
        path = cartellaD + "/" + c + "/" + p
        filepro = trova_file(path)
        desc = leggi_file(path + "/" + p + ".txt")
        filepro = [file for file in filepro if not file.endswith('.txt')]
        categoria = c
        list_img = filepro
        add_pro(categoria, list_img, desc, path, "F")

cartellaU = "./Uomo"
categoriaU = trova_cartelle(cartellaU)
for c in categoriaU:
    prodotti = trova_cartelle(cartellaU + "/" + c)
    for p in prodotti:
        path = cartellaU + "/" + c + "/" + p
        filepro = trova_file(path)
        desc = leggi_file(path + "/" + p + ".txt")
        filepro = [file for file in filepro if not file.endswith('.txt')]
        categoria = c
        list_img = filepro
        add_pro(categoria, list_img, desc, path, "M")

print("FINE :)")
