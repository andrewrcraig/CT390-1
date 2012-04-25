package acraig.ct390.lab2;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpCookie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Cookie;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloName")
public class HelloName extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloName() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		getEither(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		getEither(request, response);
	}
	
	private void getEither(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");

		if (name != null) {
			response.getWriter().println("Hello" + ' ' + name);
			storeName(request, name);                			//set and get session
			setCookie(request, response, name);      			//Declare,get, write cookies in header
		}
		else {
			response.getWriter().println("Hello World!");
			//you could maybe just use 
			//name = "World";
		}
	}

	private void setCookie(HttpServletRequest request,
			HttpServletResponse response, String name) {
		Cookie[] cookies = request.getCookies();
		Integer cookieCount = cookies.length;
		response.setHeader("Cookie-Monster", name + ' ' + "has visited" 
							+ ' ' + cookieCount + ' ' + "times");
	}

	private void storeName(HttpServletRequest request, String name) {
		HttpSession session = request.getSession(true);
		session.setAttribute("name", name);
		session.getAttribute(name);
	}
}
