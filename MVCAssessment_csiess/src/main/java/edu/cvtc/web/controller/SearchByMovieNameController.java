package edu.cvtc.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.cvtc.web.exception.MovieSearchException;
import edu.cvtc.web.model.Movie;
import edu.cvtc.web.search.MovieSearch;
import edu.cvtc.web.search.impl.MovieSearchImpl;

/**
 * Servlet implementation class SearchByMovieNameController
 */
@WebServlet("/SearchByMovieName")
public class SearchByMovieNameController extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
			final String title = request.getParameter("title");
			
			final MovieSearch movieSearch = new MovieSearchImpl();
			List<Movie> movie = movieSearch.findMoviesByTitle(title);
			request.setAttribute("movie", movie);
			
			target = "movie-search-results.jsp";
			
		} catch (MovieSearchException e) {
			
			e.printStackTrace();
			request.setAttribute("error", "Sorry, we were unable to find a movie with that title.");
			target = "error.jsp";
		}
		
		request.getRequestDispatcher(target).forward(request, response);

	}

}
