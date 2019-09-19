package product1;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Insert
 */
@WebServlet("/Insert")
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ftype= (String) request.getParameter("type");
		String ffor= request.getParameter("for");
		String fdesc= request.getParameter("desc");
		Random rand = new Random(); 
	    int code = rand.nextInt(10000000); 
		//console.log(ftype);
		
		
		
		InsertDao ins=new InsertDao();
		ins.insert(ftype, ffor, fdesc,code);
		
		HttpSession session=request.getSession();
		session.setAttribute("code",code);
		session.setAttribute("desc",fdesc);
		response.sendRedirect("code.jsp");
		
				
	}

}
