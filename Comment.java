package product1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession; 

/**
 * Servlet implementation class Comment
 */
@WebServlet("/Comment")
public class Comment extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    	
	    HttpSession session=request.getSession();
	    String status= request.getParameter("status");
		String comment= request.getParameter("comment");
		String name=(String) session.getAttribute("name");
		int code=(int) session.getAttribute("code");
		session.setAttribute("vote", "1");
		
		CommentDao com=new CommentDao();
		
		com.insert(name, code, comment, status);
		response.sendRedirect("display.jsp");
		
	}

}
