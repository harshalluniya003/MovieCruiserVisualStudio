package com.cognizant.MovieCruiser.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.cognizant.MovieCruiser.model.Movie;

@Component
public class MovieMapper implements RowMapper<Movie> {
	
	@Override
	public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {
		Movie movie = new Movie();
		movie.setMovieId(rs.getInt(1));
		movie.setTitle(rs.getString(2));
		movie.setBox_office(rs.getInt(3));
		movie.setActive(rs.getString(4));
		movie.setGenre(rs.getString(5));
		movie.setHasteaser(rs.getString(6));
		movie.setDateoflaunch(rs.getDate(7));
		return movie;
	}

}
