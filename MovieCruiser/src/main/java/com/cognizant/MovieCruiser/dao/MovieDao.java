package com.cognizant.MovieCruiser.dao;

import java.util.List;

import com.cognizant.MovieCruiser.model.Favourites;
import com.cognizant.MovieCruiser.model.Movie;

public interface MovieDao {

	public List<Movie> MovieList();

	public List<Movie> MovieListCustomer();
	
	public List<Favourites> FavouriteItems(String name);
	
}
