package com.cognizant.MovieCruiser.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.cognizant.MovieCruiser.model.Favourites;
import com.cognizant.MovieCruiser.model.Movie;
import com.cognizant.MovieCruiser.model.User;
import com.cognizant.MovieCruiser.dao.FavouritesMapper;

@Service
public class MovieDaoImpl implements MovieDao {

	@Autowired
	MovieMapper empm;
	@Autowired
	UserMapper umap;
	@Autowired
	JdbcTemplate jdbc;
	@Autowired
	FavouritesMapper Fmap;

	@Override
	public List<Movie> MovieList() {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		JdbcTemplate jdbc = (JdbcTemplate) ctx.getBean("jdbcTemplate");
		String sql = "select * from movies";
		List<Movie> list = jdbc.query(sql, empm);
		ctx.close();
		return list;
	}

	@Override
	public List<Movie> MovieListCustomer() {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		JdbcTemplate jdbc = (JdbcTemplate) ctx.getBean("jdbcTemplate");
		String sql = "select * from movies where IsActive='Yes'";
		List<Movie> list = jdbc.query(sql, empm);
		ctx.close();
		return list;
	}

	public void EditMovieList(Movie mov) {
		String active = mov.getActive();
		String genre = mov.getGenre();
		String hasteaser = mov.getHasteaser();
		int movieid = mov.getMovieId();
		String sql = "update movieList active=?,genre=?,hasteaser=? where movieid=?";
		jdbc.update(sql, active, genre, hasteaser, movieid);

	}

	public void addUser(String username, String password) {
		String sql = "Insert into users(user_name, user_password, user_role) values(?,?,?)";
		jdbc.update(sql, username, password, "Customer");
	}

	public List<User> getUser(String uname) {
		String sql = "select * from users";
		List<User> users = jdbc.query(sql, umap);
		return users;
	}

	public List<Movie> MenuListCustomer() {
		return null;
	}

	public void addToFavourites(int id, int movieId) {
		String sql = "insert into favourites(fav_us_id, fav_mo_id) values(?,?)";
		jdbc.update(sql, id, movieId);
	}

	@Override
	public List<Favourites> FavouriteItems(String name) {
		String sql = "select f.fav_id,f.fav_mo_id,m.Title,m.Box_Office from movies m join favourites f on m.Id=f.fav_mo_id join users u on f.fav_us_id=u.user_id where u.user_name=?";
		List<Favourites> favourites = jdbc.query(sql, Fmap, name);
		return favourites;
	}
	
	/* @Override
	public List<Favourites> FavouritesList(String name) {
		String sql = "select f.fav_id,f.fav_mo_id,m.Title,m.Box_Office from movies m join favourites f on m.Id=f.fav_mo_id join users u on f.fav_us_id=u.user_id where u.user_name=?";
		List<Favourites> favourites = jdbc.query(sql, Fmap, name);
		return favourites;
	} */
	
	public void DeleteFav(int id) {
		String sql="DELETE FROM favourites WHERE fav_id=?";
		jdbc.update(sql, id);
		
	}

}
