package product1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Check")
public class Check extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
		String namee=  request.getParameter("name");
		String codee=  request.getParameter("code");
		int code=Integer.parseInt(codee);
		CheckDao dao = new CheckDao();
		request.removeAttribute("message");
		HttpSession session=request.getSession();
		//dao layer must
		if(dao.check(code))
		//if(uname.equals("nithish") && pass.equals("sid"))
		{
			
			session.setAttribute("name",namee);
			session.setAttribute("code",code);
			response.sendRedirect("main.jsp");
			 
		}
		else
		{
			//HttpSession session=request.getSession();
			session.setAttribute("message", "No such Invitation Code exists");
			response.sendRedirect("welcome.jsp");
		}
				
	}

	

}