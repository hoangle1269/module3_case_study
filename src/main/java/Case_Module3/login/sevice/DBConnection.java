package Case_Module3.login.sevice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL = System.getenv("URL_THONG_TIN_NGUOI_DUNG");
    private static final String USER = System.getenv("USER");
    private static final String PASSWORD = System.getenv("PASSWORD");

    private DBConnection() {}

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}