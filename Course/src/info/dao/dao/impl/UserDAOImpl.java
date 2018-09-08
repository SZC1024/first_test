package info.dao.dao.impl;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.sun.crypto.provider.RSACipher;
 
import info.dao.dao.UserDAO;
import info.dao.vo.Student;
import info.dao.vo.User;

public class UserDAOImpl implements UserDAO {
    private Connection conn = null;
    private PreparedStatement pstmt = null;
 
    public UserDAOImpl(Connection conn) {
       this.conn = conn;
    }
 
   
	public boolean isLogin(User user) throws Exception {
	       boolean flag = false;
	       String sql = "SELECT * FROM user" ;  
	       this.pstmt = this.conn.prepareStatement(sql);  
           ResultSet rs = pstmt.executeQuery() ; 
           String username = user.getUsername();
           String password = user.getPassword();
           while (rs.next()) {
               if (username.equals(rs.getString("username")) && password.equals(rs.getString("password"))) {
                   flag = true;
               }
           }
	       this.pstmt.close(); 
	       return flag;
	}

	public void delete(Student student) throws Exception {
		String sql = "delete from Student where sno = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, student.getSno());
		pstmt.executeUpdate();
		pstmt.close();
	}
	

	public void insertStu(Student student) throws Exception {
		String sql = "insert into student(sno,name,age,score) values(?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, student.getSno());
		pstmt.setString(2, student.getName());
		pstmt.setString(3, student.getSex());
		pstmt.setString(4, student.getMajor());
		pstmt.setString(5, student.getScore());
		System.out.println(student.getScore());
		pstmt.executeUpdate();
		pstmt.close();
	}
	public void update(Student student) throws Exception {
		String sql = "update student set sno = ?, name = ?, sex = ?,major=?, score = ? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, student.getSno());
		pstmt.setString(2, student.getName());
		pstmt.setString(3, student.getSex());
		pstmt.setString(4, student.getMajor());
		pstmt.setString(5, student.getScore());
		pstmt.executeUpdate();
		
		pstmt.close();
	}

	public boolean insert(User user) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}
}





 