package it.unisa.model;

public class Product {
  private int id_prod;
  private String categoria;
  private String nome;
  private int quantita_disponibile;
  private float prezzo;
  private String descrizione;
  private String sex;

  public int getId_prod() {
      return id_prod;
  }

  public void setId_prod(int id_prod) {
      this.id_prod = id_prod;
  }
  public String getCategoria() {
      return categoria;
  }

  public void setCategoria(String categoria) {
      this.categoria = categoria;
  }

  public String getNome() {
      return nome;
  }

  public void setNome(String nome) {
      this.nome = nome;
  }

  public int getQuantita_disponibile() {
      return quantita_disponibile;
  }

  public void setQuantita_disponibile(int quantita_disponibile) {
      this.quantita_disponibile = quantita_disponibile;
  }

  public float getPrezzo() {
      return prezzo;
  }

  public void setPrezzo(float prezzo) {
      this.prezzo = prezzo;
  }

  public String getDescrizione() {
      return descrizione;
  }

  public void setDescrizione(String descrizione) {
      this.descrizione = descrizione;
  }

  public String getSex() {
      return sex;
  }

  public void setSex(String sex) {
      this.sex = sex;
  }
}
  
