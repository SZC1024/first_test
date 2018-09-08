package info.dao.dao.proxy;//¥˙¿Ì¿‡

import info.dao.dao.UserDAO;
import info.dao.dbc.DatabaseConnection;
import info.dao.dao.impl.UserDAOImpl;
import info.dao.vo.Student;
import info.dao.vo.User;

public class UserDAOProxy implements UserDAO {
	private DatabaseConnection dbc = null; 
	private UserDAO userDAOImpl = null; 

	public UserDAOProxy() throws Exception { 
		this.dbc = new DatabaseConnection(); 
		this.userDAOImpl = new UserDAOImpl(this.dbc.getConnection());
	}

	public boolean isLogin(User user) throws Exception {
		boolean flag = false; 
		try {
			flag = userDAOImpl.isLogin(user);
		} catch (Exception e) {
			throw e;
		} finally {
			dbc.close(); 
		}
		return flag;
	}

	public boolean insert(User user) throws Exception {
		boolean flag = false;
		try {
			flag = userDAOImpl.insert(user); 
		} catch (Exception e) {
			throw e;
		} finally {
			dbc.close(); 
		}
		return flag;
	}

	public void delete(Student student) throws Exception {
		try {
			userDAOImpl.delete(student); 
		} catch (Exception e) {
			throw e;
		} finally {
			dbc.close(); 
		}
	}

	public void insertStu(Student student) throws Exception {
		try {
			userDAOImpl.insertStu(student); 
		} catch (Exception e) {
			throw e;
		} finally {
			dbc.close(); 
		}
	}

	public void update(Student student) throws Exception {
		try {
			userDAOImpl.update(student); 
		} catch (Exception e) {
			throw e;
		} finally {
			dbc.close(); 
		}
	}

}