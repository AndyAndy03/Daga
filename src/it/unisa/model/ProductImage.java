package it.unisa.model;
public class ProductImage {
	private int id_img;
	private int id_prod;
	private String img;

	public ProductImage(){}
	
	public int getId_img() {
	      return id_img;
	  }

	  public void setId_img(int id_img) {
	      this.id_img = id_img;
	  }
	  
	  public String getImg() {
	      return this.img;
	  }

	  public void setImg(String img) {
	      this.img = img;
	  }
	  
	  public int getId_prod() {
	      return id_prod;
	  }

	  public void setId_prod(int pro_id) {
	      this.id_prod = pro_id;
	  }
	  
	}
	  
