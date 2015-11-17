package edu.cvtc.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.cvtc.web.dao.MovieDao;
import edu.cvtc.web.dao.impl.MovieDaoImpl;
import edu.cvtc.web.exception.MovieDatabaseException;
import edu.cvtc.web.model.Movie;
import edu.cvtc.web.model.Star;

/**
 * Servlet implementation class AddMovieController
 */
@WebServlet("/AddMovie")
public class AddMovieController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private MovieDao movieDao = new MovieDaoImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String target = null;
		
		try {
			
			final int id = 0;
			final String title = request.getParameter("title");
			final String director = request.getParameter("director");
			final int minutes = Integer.parseInt(request.getParameter("minutes"));
			final String star1 = request.getParameter("star1");
			final String star2 = request.getParameter("star2");
			final String star3 = request.getParameter("star3");
			
			final List<Star> stars = new ArrayList<>();
			stars.add(new Star(star1, null));
			stars.add(new Star(star2, null));
			stars.add(new Star(star3, null));
			
			final Movie movie = new Movie(id, title, director, minutes, stars);
			
			movieDao.insertMovie(movie);
			
			request.setAttribute("success", "Success, a new movie has been added to the database.");
			target = "success.jsp";
			
		} catch (MovieDatabaseException e) {
			e.printStackTrace();
			request.setAttribute("error", "Sorry, there was a problem adding this movie to the database.");
			target = "error.jsp";
		}
		
		request.getRequestDispatcher(target).forward(request, response);
	}

}
