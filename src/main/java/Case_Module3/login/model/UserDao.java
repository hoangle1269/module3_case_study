package Case_Module3.login.model;

import Case_Module3.login.model.DTO.UserDTO;
import Case_Module3.login.sevice.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    public static void signUpUser(String gmail, String password) {
        final String INSERT_QUERY = System.getenv("INSERT_QUERY_PASSWORD");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(INSERT_QUERY)) {
            stmt.setString(1, gmail);
            stmt.setString(2, password);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error executing insert query", e);
        }
    }

    public static boolean checkAccountsignUpUser(String emailInPut) throws ClassNotFoundException {
        final String CHECK_ACCOUNT_SIGN_UP_USER = System.getenv("CHECK_ACCOUNT_SIGN_UP_USER");
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement statement = conn.prepareStatement(CHECK_ACCOUNT_SIGN_UP_USER);
             ResultSet rs = statement.executeQuery()) {
            while (rs.next()) {
                String emailUotPut = rs.getString("email");
                if (emailUotPut.equals(emailInPut)) {
                    return false;
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return true;
    }


    public static boolean checkAccount(String emailInPut, String passwordInPut) throws ClassNotFoundException {
        final String CHECK_ACCOUNT = System.getenv("CHECK_ACCOUNT");
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement statement = conn.prepareStatement(CHECK_ACCOUNT);
             ResultSet rs = statement.executeQuery()) {
            while (rs.next()) {
                String emailUotPut = rs.getString("email");
                String passwordUotPut = rs.getString("password");
                if (emailUotPut.equals(emailInPut) && passwordUotPut.equals(passwordInPut)) {
                    return true;
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public static void addUserInfomation(String name, int age, int phoneNumber, String address, String email) {
        final String UPDATE_USER_INFORMATION = System.getenv("UPDATE_USER_INFORMATION");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(UPDATE_USER_INFORMATION)) {
            stmt.setString(1, name);
            stmt.setInt(2, age);
            stmt.setInt(3, phoneNumber);
            stmt.setString(4, address);
            stmt.setString(5, email);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error executing", e);
        }
    }

    public static boolean checkUserInfomation(String email) {
        boolean checkInfomation = true;
        final String CHECK_INFORMATION = System.getenv("CHECK_USER_INFORMATION");
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(CHECK_INFORMATION);) {
            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String tuoi = resultSet.getString("tuoi");
                if (tuoi == null) {
                    checkInfomation = false;
                    return checkInfomation;
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error executing ", e);
        }
        return checkInfomation;
    }


    public static List<UserDTO> select(String selectQuery) {
        List<UserDTO> users = new ArrayList<>();
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(selectQuery);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                int id = resultSet.getInt("user_id");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                users.add(new UserDTO(id, email, password));
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error executing select query", e);
        }
        return users;
    }
}

