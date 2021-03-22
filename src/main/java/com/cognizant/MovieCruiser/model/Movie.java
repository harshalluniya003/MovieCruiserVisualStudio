package com.cognizant.MovieCruiser.model;

import java.util.Date;

public class Movie {

	public Movie() {

	}

	private int movieId;
	private String title;
	private int box_office;
	private String active;
	private String genre;
	private String hasteaser;
	private Date date_of_launch;

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getBox_office() {
		return box_office;
	}

	public void setBox_office(int box_office) {
		this.box_office = box_office;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getHasteaser() {
		return hasteaser;
	}

	public void setHasteaser(String hasteaser) {
		this.hasteaser = hasteaser;
	}

	public Date getDate_of_launch() {
		return date_of_launch;
	}

	public void setDateoflaunch(Date date_of_launch) {
		this.date_of_launch = date_of_launch;
	}

	public Movie(int movieId, String title, int box_Office, String active, String genre, String hasteaser,
			Date date_of_launch) {
		super();
		this.movieId = movieId;
		this.title = title;
		this.box_office = box_office;
		this.active = active;
		this.genre = genre;
		this.hasteaser = hasteaser;
		this.date_of_launch = date_of_launch;
	}

	@Override
	public String toString() {
		return "Movie [movieId=" + movieId + ", title=" + title + ", box_office=" + box_office + ", active=" + active
				+ ", genre=" + genre + ", hasteaser=" + hasteaser + ", date_of_launch=" + date_of_launch + "]";
	}

}
