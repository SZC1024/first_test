package servlets;

import info.dao.dao.UserDAO;
import info.dao.factory.DAOFactory;
import info.dao.vo.User;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheck extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		boolean flag = false;
		String ident = req.getParameter("ident");
		HttpSession session = req.getSession();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
	
		UserDAO userDAOProxy = null;
		try {
			userDAOProxy = DAOFactory.getUserDAOInstance();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		System.out.println(username);
		System.out.println(password);
		try {
			flag = userDAOProxy.isLogin(user);
			System.out.println(flag);
			if (flag) {
				session.setAttribute("user", user);
				if (ident.equals("admin")) {
					resp.sendRedirect("/Course/admin.jsp");
				}
				else {
					resp.sendRedirect("/Course/search.jsp");
				}
				
			} else {
				resp.sendRedirect("fail.jsp");
				//out.print("fail");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
