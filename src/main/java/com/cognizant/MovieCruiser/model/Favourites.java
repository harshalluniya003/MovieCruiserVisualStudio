package com.cognizant.MovieCruiser.model;

import java.util.List;

public class Favourites {
	
	private int fav_id;
	private int fav_mo_id;
	private String title;
	private int box_office;

	public int getFav_mo_id() {
		return fav_mo_id;
	}

	public void setFav_mo_id(int fav_mo_id) {
		this.fav_mo_id = fav_mo_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public double getBox_Office() {
		return box_office;
	}

	public void setBox_Office(int box_office) {
		this.box_office = box_office;
	}

	public int getFav_id() {
		return fav_id;
	}

	public void setFav_id(int fav_id) {
		this.fav_id = fav_id;
	}

	public Favourites(int fav_id, int fav_mo_id, String title, int box_office) {
		super();
		this.fav_id = fav_id;
		this.fav_mo_id = fav_mo_id;
		this.title = title;
		this.box_office = box_office;
	}

	public Favourites() {

	}

}
