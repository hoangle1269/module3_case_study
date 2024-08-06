package Case_Module3.login.model;

import Case_Module3.login.model.DTO.TransactionDTO;
import Case_Module3.login.model.DTO.WalletDTO;
import Case_Module3.login.sevice.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

    public static List<TransactionDTO> showAllTransaction() throws ClassNotFoundException {
        List<TransactionDTO> listTransaction = new ArrayList<TransactionDTO>();
        final String SHOW_ALL_TRANSACTION = System.getenv("SHOW_ALL_TRANSACTION");
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(SHOW_ALL_TRANSACTION);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                int idTransaction = rs.getInt("MaGiaoDich");
                int idUser = rs.getInt("MaNguoiDung");
                int idEWallets = rs.getInt("MaViTien");
//                int idCategory = rs.getInt("MaDanhMuc ");
                int idCategory = 1;
                long money = rs.getLong("SoTien");
                String note = rs.getString("GhiChu");
                String type = rs.getString("LoaiGiaoDich");
                String dayTrading = rs.getString("NgayGiaoDich");
                String dateCreated = rs.getString("NgayTao");
                String latestDate = rs.getString("NgayCapNhat");
                assert false;
                listTransaction.add(new TransactionDTO(idTransaction, idUser, idEWallets, idCategory, money, note, type, dayTrading, dateCreated, latestDate));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listTransaction;
    }

    public static void deleteTransaction(int idTransaction) throws ClassNotFoundException {
        final String DELETE_TRANSACTION = System.getenv("DELETE_TRANSACTION");
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(DELETE_TRANSACTION)) {
            stmt.setInt(1, idTransaction);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error executing delete query", e);
        }
    }

    public static void updateTransaction(long money, String type, String dayTrading, String dateCreated, String latestDate, String note, int idTransaction) {
        final String UPDATE_TRANSACTION_WHERE_ID = System.getenv("UPDATE_TRANSACTION_WHERE_ID");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(UPDATE_TRANSACTION_WHERE_ID)) {
//            stmt.setInt(1, idDirectory);
            stmt.setLong(1, money);
            stmt.setString(2, type);
            stmt.setString(3, dayTrading);
            stmt.setString(4, dateCreated);
            stmt.setString(5, latestDate);
            stmt.setString(6, note);
            stmt.setInt(7, idTransaction);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error executing update query", e);
        }
    }

    public static List<TransactionDTO> showTransactionWhereIdWallet(int idWallet) {
        List<TransactionDTO> listTransaction = new ArrayList<>();
        final String SHOW_ALL_TRANSACTION_WHERE_ID_WALLET = System.getenv("SHOW_ALL_TRANSACTION_WHERE_ID_WALLET");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(SHOW_ALL_TRANSACTION_WHERE_ID_WALLET)) {
            stmt.setInt(1, idWallet);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int idTransaction = rs.getInt("MaGiaoDich");
                int idUser = rs.getInt("MaNguoiDung");
                int idEWallets = rs.getInt("MaViTien");
//                int idCategory = rs.getInt("MaDanhMuc ");
                int idCategory = 1;
                long money = rs.getLong("SoTien");
                String note = rs.getString("GhiChu");
                String type = rs.getString("LoaiGiaoDich");
                String dayTrading = rs.getString("NgayGiaoDich");
                String dateCreated = rs.getString("NgayTao");
                String latestDate = rs.getString("NgayCapNhat");
                assert false;
                listTransaction.add(new TransactionDTO(idTransaction, idUser, idEWallets, idCategory, money, note, type, dayTrading, dateCreated, latestDate));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listTransaction;
    }

    public static List<TransactionDTO> showTransactionWhereDayNow(String dayNow) {
        List<TransactionDTO> listTransaction = new ArrayList<>();
        final String SHOW_ALL_TRANSACTION_WHERE_DAY_NOW = System.getenv("SHOW_ALL_TRANSACTION_WHERE_DAY_NOW");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(SHOW_ALL_TRANSACTION_WHERE_DAY_NOW)) {
            stmt.setString(1, dayNow);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int idTransaction = rs.getInt("MaGiaoDich");
                int idUser = rs.getInt("MaNguoiDung");
                int idEWallets = rs.getInt("MaViTien");
//                int idCategory = rs.getInt("MaDanhMuc ");
                int idCategory = 1;
                long money = rs.getLong("SoTien");
                String note = rs.getString("GhiChu");
                String type = rs.getString("LoaiGiaoDich");
                String dayTrading = rs.getString("NgayGiaoDich");
                String dateCreated = rs.getString("NgayTao");
                String latestDate = rs.getString("NgayCapNhat");
                assert false;
                listTransaction.add(new TransactionDTO(idTransaction, idUser, idEWallets, idCategory, money, note, type, dayTrading, dateCreated, latestDate));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listTransaction;
    }
    public static List<TransactionDTO> showTransactionWhereDuration(String dayStart,String dayEnd) {
        List<TransactionDTO> listTransaction = new ArrayList<>();
        final String SHOW_ALL_TRANSACTION_WHERE_DURATION = System.getenv("SHOW_ALL_TRANSACTION_WHERE_DURATION");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(SHOW_ALL_TRANSACTION_WHERE_DURATION)) {
            stmt.setString(1, dayStart);
            stmt.setString(2, dayEnd);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int idTransaction = rs.getInt("MaGiaoDich");
                int idUser = rs.getInt("MaNguoiDung");
                int idEWallets = rs.getInt("MaViTien");
//                int idCategory = rs.getInt("MaDanhMuc ");
                int idCategory = 1;
                long money = rs.getLong("SoTien");
                String note = rs.getString("GhiChu");
                String type = rs.getString("LoaiGiaoDich");
                String dayTrading = rs.getString("NgayGiaoDich");
                String dateCreated = rs.getString("NgayTao");
                String latestDate = rs.getString("NgayCapNhat");
                assert false;
                listTransaction.add(new TransactionDTO(idTransaction, idUser, idEWallets, idCategory, money, note, type, dayTrading, dateCreated, latestDate));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listTransaction;
    }

}