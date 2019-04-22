package com.storeme.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.storeme.javabean.UserBean;
import com.storeme.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("username");
		String pass = request.getParameter("password");
		System.out.println("Username eto: " + uname + "password eto: " + pass);
		String action = "";
		UserBean u = new UserBean();
		LoginDao dao = new LoginDao();
		
		PrintWriter outa = response.getWriter();
		PrintWriter outb = response.getWriter();
		PrintWriter outc = response.getWriter();
		PrintWriter outd = response.getWriter();
		
		
		
		
		try {
			if(dao.check(uname, pass)) {
				if(dao.checklock(dao.getiduser(uname)) == 1) {
					System.out.println("nakalock");
					if(dao.checktimer(dao.getiduser(uname)) >= 60) { 
					dao.unlockaccounnt(dao.getiduser(uname));
					outd.println("<script type=\"text/javascript\">");
					outd.println("alert('Account succesfully unlocked. Login again to continue.');");
					outd.println("location='HomePage.jsp';");
					outd.println("</script>");
					}
					else {
					outc.println("<script type=\"text/javascript\">");
					outc.println("alert('Account locked for 1 minute.');");
					outc.println("location='WelcomePage.jsp';");
					outc.println("</script>");
					}
				}else {
					
					HttpSession oldSession = request.getSession(false);
		            if (oldSession != null) {
		                oldSession.invalidate();
		            }
		            HttpSession session = request.getSession(true);
		            Cookie message = new Cookie("message", "Welcome");
		            message.setSecure(true);
		            message.setHttpOnly(true);
		          
		            response.addCookie(message);
				if(dao.checkadmin(uname)== 1) {
					session.setAttribute("csrfToken", dao.generateCSRFToken());
					session.setAttribute("privilege1", dao.checkadmin(uname));
					session.setAttribute("username", uname);
					session.setAttribute("iduser", dao.getiduser(uname));
					System.out.println("futa: "+dao.getiduser(uname));
					response.sendRedirect("HomePage.jsp");
					action = uname + " ID: " + dao.getiduser(uname) + " logged in at " + LocalDateTime.now();
				}else if(dao.checkadmin(uname)== 2) {
					session.setAttribute("isproductmanager", uname);
					session.setAttribute("username", uname);
					session.setAttribute("iduser", dao.getiduser(uname));
					session.setAttribute("privilege2", dao.checkadmin(uname));
					System.out.println("futa 2: "+dao.getiduser(uname) );
					response.sendRedirect("HomePage.jsp");
					action = uname + " ID: " + dao.getiduser(uname) + " logged in at " + LocalDateTime.now();
				}else if(dao.checkadmin(uname)==3) {
					session.setAttribute("isaccountingmanager", uname);
					session.setAttribute("username", uname);
					session.setAttribute("iduser", dao.getiduser(uname));
					session.setAttribute("privilege3", dao.checkadmin(uname));
					System.out.println("futa 3: "+dao.getiduser(uname));
					response.sendRedirect("HomePage.jsp");
					action = uname + " ID: " + dao.getiduser(uname) + " logged in at " + LocalDateTime.now();
				}else if(dao.check(uname, pass)){
					session.setAttribute("normuser", uname);
					session.setAttribute("csrfToken", dao.generateCSRFToken());
					session.setAttribute("username", uname);
					session.setAttribute("iduser", dao.getiduser(uname));
					session.setAttribute("privilege4", dao.checkadmin(uname));					
					System.out.println("username: "+uname);
					response.sendRedirect("HomePage.jsp");
					action = uname + " ID: " + dao.getiduser(uname) + " logged in at " + LocalDateTime.now();
				}
				}
		
				
			}else if(dao.checkusername(uname)) {
				if(dao.attempts(dao.getiduser(uname)) >= 3) {
					System.out.println("pasok");
					if(dao.checktimer(dao.getiduser(uname)) >= 60) {
						dao.unlockaccounnt(dao.getiduser(uname));
					}else
						dao.lockaccounnt(dao.getiduser(uname));
						outa.println("<script type=\"text/javascript\">");
						outa.println("alert('Account locked for 1 minute.');");
						outa.println("location='WelcomePage.jsp';");
						outa.println("</script>");
				}else{
					if(dao.checkifexists(dao.getiduser(uname))) {
						dao.addattempts(dao.getiduser(uname));
						outb.println("<script type=\"text/javascript\">");
						outb.println("alert('Username/Password is Incorrect');");
						outb.println("location='WelcomePage.jsp';");
						outb.println("</script>");
					}else {
						dao.addnewentry(dao.getiduser(uname));
						outb.println("<script type=\"text/javascript\">");
						outb.println("alert('Username/Password is Incorrect');");
						outb.println("location='WelcomePage.jsp';");
						outb.println("</script>");
					}
					
				}
				
			}else {
				outb.println("<script type=\"text/javascript\">");
				outb.println("alert('Username/Password is Incorrect');");
				outb.println("location='WelcomePage.jsp';");
				outb.println("</script>");
			}
			/*
			try (PrintWriter wr = new PrintWriter(new BufferedWriter(new FileWriter("C:\\Documents\\logfiles.txt", true)))) {
				System.out.println("File Opened");
			    wr.println(action);
			    wr.close();
			} catch (IOException x) {
			    System.err.format("IOException: %s%n", x);
			    System.out.println("File not opened");
			}
			//file writing code end*/
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		}

}
