package Case_Module3.login.model;

import Case_Module3.login.sevice.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TransactionDao {
    public static void addTransaction(int idUser, int idWallet, long money, String note, String type, String dayTrading, String dateCreated) throws ClassNotFoundException {
        final String INSERT_INFORMATION_TRANSACTION_MANAGEMENT = System.getenv("INSERT_INFORMATION_TRANSACTION_MANAGEMENT");
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(INSERT_INFORMATION_TRANSACTION_MANAGEMENT)) {
            stmt.setInt(1, idUser);
            stmt.setInt(2, idWallet);
            stmt.setLong(3, money);
            stmt.setString(4, note);
            stmt.setString(5, type);
            stmt.setString(6, dayTrading);
            stmt.setString(7, dateCreated);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error executing insert query", e);
        }
    }
}

