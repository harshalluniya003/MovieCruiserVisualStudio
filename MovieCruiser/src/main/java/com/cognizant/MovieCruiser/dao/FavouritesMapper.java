package com.cognizant.MovieCruiser.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.cognizant.MovieCruiser.model.Favourites;
import com.cognizant.MovieCruiser.model.Movie;

@Component
public class FavouritesMapper implements RowMapper<Favourites> {

	@Override
	public Favourites mapRow(ResultSet rs, int rowNum) throws SQLException {
		Favourites Fav=new Favourites();
		Fav.setFav_id(rs.getInt(1));
		Fav.setFav_mo_id(rs.getInt(2));
		Fav.setTitle(rs.getString(3));
		Fav.setBox_Office(rs.getInt(4));
		
		return Fav;
		
	}
	
	

}
