package com.cognizant.MovieCruiser.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.MovieCruiser.dao.MovieDaoImpl;
import com.cognizant.MovieCruiser.model.Movie;
import com.cognizant.MovieCruiser.model.User;
import com.cognizant.MovieCruiser.model.Favourites;

@Controller
public class MovieViewController {

	@Autowired
	MovieDaoImpl movieDao;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String MovieList(HttpServletRequest request, ModelMap model, @RequestParam String name,
			@RequestParam String password) {
		List<User> users = movieDao.getUser(name);
		for (User user : users) {
			if (user.getUsername().equals(name) && user.getPassword().equals(password)) {

				if (user.getRole().equals("Customer")) {
					List<Movie> listCust = movieDao.MovieListCustomer();
					model.put("listCust", listCust);
					HttpSession session = request.getSession();
					session.setAttribute("user", user);
					return "Customer";
				} else if (user.getRole().equals("admin")) {
					List<Movie> list = movieDao.MovieList();
					model.put("list", list);
					return "Admin";
				}
			}
		}
		model.put("errorMessage", "Invalid Credentials");
		return "login";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String showSignUp(ModelMap model) {
		return "SignUp";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String addUser(ModelMap model, @RequestParam String username, @RequestParam String password) {
		movieDao.addUser(username, password);
		return "login";
	}

	@RequestMapping(value = "/favourites", method = RequestMethod.GET)
	public String AddToFavourites(ModelMap model, HttpServletRequest request, @RequestParam int movieId) {
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute("user");
		movieDao.addToFavourites(user.getId(), movieId);
		model.put("Movie Added", "Movie Added");
		List<Movie> listCust = movieDao.MenuListCustomer();
		model.put("listCust", listCust);
		return "Customer";
	}

	@RequestMapping(value = "/car")
	public String showCart(ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute("user");

		List<Favourites> fav = movieDao.FavouriteItems(user.getUsername());
		model.put("Favouritesitems", fav);
		return "Favourites";
	}

	@RequestMapping(value = "/return")
	public String returnToMainPage(ModelMap model) {
		List<Movie> listCust = movieDao.MovieListCustomer();
		model.put("listCust", listCust);
		return "Cust";
	}

	@RequestMapping(value = "/EditMovie", method = RequestMethod.GET)
	public String showEdit(ModelMap model, @RequestParam int movieId) {
		return "EditMovie";
	}

	@RequestMapping(value = "/EditMovie", method = RequestMethod.POST)
	public String viewEditMovie(ModelMap model, @RequestParam int movieId, @RequestParam String active,
			@RequestParam String genre, @RequestParam String hasteaser) {
		Movie mov = new Movie();
		// mov.setBoxoffice(boxoffice);
		mov.setActive(active);
		mov.setGenre(genre);
		mov.setHasteaser(hasteaser);
		mov.setMovieId(movieId);
		movieDao.EditMovieList(mov);
		return "EditMovie";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String Delete(@RequestParam int id) {
		movieDao.DeleteFav(id);
		return "redirect:car";
	}

	@RequestMapping(value = "/returnAdmin")
	public String ReturnToAdmin(ModelMap model) {
		List<Movie> list = movieDao.MovieList();
		model.put("list", list);
		return "Admin";
	}

	@RequestMapping(value = "/logout")
	public String ReturnToLogin() {
		return "redirect:login";
	}

}
