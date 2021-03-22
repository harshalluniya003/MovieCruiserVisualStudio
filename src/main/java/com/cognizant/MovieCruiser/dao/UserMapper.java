package com.cognizant.MovieCruiser.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.cognizant.MovieCruiser.model.User;

public class UserMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user=new User();
		user.setId(rs.getInt(1));
		user.setUsername(rs.getString(2));
		user.setPassword(rs.getString(3));
		user.setRole(rs.getString(4));
		return user;
	}	

}
