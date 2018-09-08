package servlets;

import info.dao.dao.UserDAO;
import info.dao.factory.DAOFactory;
import info.dao.vo.Student;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class updateStudent extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		Student student = new Student();
		student.setSno(req.getParameter("sno"));
		student.setName(req.getParameter("name"));
		student.setSex(req.getParameter("sex"));
		student.setMajor(req.getParameter("major"));
		student.setScore(req.getParameter("score"));
		System.out.println(req.getParameter("sno"));
		System.out.println(req.getParameter("name"));
		System.out.println("***");
		UserDAO userDAOProxy = null;
		try {
			userDAOProxy = DAOFactory.getUserDAOInstance();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		try {
			userDAOProxy.update(student);
			resp.sendRedirect("/Course/admin.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
