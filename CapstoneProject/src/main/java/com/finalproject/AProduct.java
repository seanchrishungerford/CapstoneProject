package com.finalproject;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "aproduct")
public class AProduct {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private long id;
	private String name;
	private String genre;
	private String thecondition;
	private double price;
	private String category;
	private String description;
	private String img;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getThecondition() {
		return thecondition;
	}
	public void setThecondition(String thecondition) {
		this.thecondition = thecondition;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public AProduct(long id, String name, String genre, String thecondition, double price, String category,
			String description, String img) {
		super();
		this.id = id;
		this.name = name;
		this.genre = genre;
		this.thecondition = thecondition;
		this.price = price;
		this.category = category;
		this.description = description;
		this.img = img;
	}
	public AProduct() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
