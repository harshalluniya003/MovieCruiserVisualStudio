package com.cognizant.MovieCruiser.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import com.cognizant.MovieCruiser.model.Favourites;
import com.cognizant.MovieCruiser.model.Movie;

public class FavouritesDaoImpl implements FavouritesDao{

	@Autowired
	FavouritesMapper favmpm;

	@Override
	public List<Favourites> viewFavourites() {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		JdbcTemplate jdbc = (JdbcTemplate) ctx.getBean("jdbcTemplate");
		String sql = "select fav_mov_id from favourites";
		
		List<Favourites> list = jdbc.query(sql, favmpm);
		ctx.close();
		return list;
	}
	
	

}
