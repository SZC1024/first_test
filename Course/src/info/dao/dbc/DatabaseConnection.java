package info.dao.dbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

    private static final String DBDRIVER = "org.gjt.mm.mysql.Driver";
    public static final String DBURL = "jdbc:mysql://localhost:3306/StudentManage";
    public static final String DBUSER = "root";
    public static final String DBPASS = "123456";
    private Connection conn;

    public DatabaseConnection() {
        try {
            Class.forName(DBDRIVER);
            this.conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return this.conn;
    }

    public void close() {
        if (this.conn != null) {
            try {
                this.conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
