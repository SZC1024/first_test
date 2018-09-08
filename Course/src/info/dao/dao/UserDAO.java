package info.dao.dao;

import info.dao.vo.Student;
import info.dao.vo.User;

public interface UserDAO {
	public boolean isLogin(User user) throws Exception;
	public boolean insert(User user) throws Exception;
	public void delete (Student student) throws Exception;
	public void insertStu (Student student ) throws Exception;
	public void update (Student student) throws Exception;
}
