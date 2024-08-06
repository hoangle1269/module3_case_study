package Case_Module3.login.model;

import Case_Module3.login.model.DTO.WalletDTO;
import Case_Module3.login.sevice.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EWalletsDao {
    public static void addEWallets(String name, Long code, String date, String cvv, int idUser) {
        final String INSERT_QUERY_ADD = System.getenv("INSERT_QUERY_E_WALLETS");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(INSERT_QUERY_ADD)) {
            stmt.setString(1, name);
            stmt.setLong(2, code);
            stmt.setString(3, date);
            stmt.setString(4, cvv);
            stmt.setInt(5, idUser);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error executing insert query", e);
        }
    }

    public static int checkIdUser(String email) {
        final String SELECT_QUERY_ID_USER = System.getenv("CHECK_ID_USER");
        int idUser = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(SELECT_QUERY_ID_USER)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                idUser = rs.getInt("MaNguoiDung");
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error executing select query", e);
        }
        return idUser;
    }

    public static List<WalletDTO> showWalletInformation() throws ClassNotFoundException {
        List<WalletDTO> listWalletInformation = new ArrayList<>();
        final String SHOW_WALLET_INFORMATION = System.getenv("SHOW_WALLET_INFORMATION");
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(SHOW_WALLET_INFORMATION);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                int idWallet = resultSet.getInt("MaViTien");
                int idUser = resultSet.getInt("MaNguoiDung");
                String nameWallet = resultSet.getString("TenNguoiDung");
                long codeWallet = resultSet.getLong("MaCode");
                String expirationDate = resultSet.getString("NgayHetHan");
                String cvv = resultSet.getString("MaMat");
                long money = resultSet.getLong("tien");
                listWalletInformation.add(new WalletDTO(idWallet, idUser, nameWallet, codeWallet, expirationDate, cvv, money));
            }
            System.out.println(listWalletInformation);
        } catch (SQLException e) {
            throw new RuntimeException("Error executing select query", e);
        }
        return listWalletInformation;
    }

    public static void updateWalletInformation(String nameWallet, long codeWallet, String expDate, String cvv, int idWallet) {
        final String UPDATE_INFORMATION_WHERE_ID = System.getenv("UPDATE_INFORMATION_WHERE_ID");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(UPDATE_INFORMATION_WHERE_ID)) {
            stmt.setString(1, nameWallet);
            stmt.setLong(2, codeWallet);
            stmt.setString(3, expDate);
            stmt.setString(4, cvv);
            stmt.setInt(5, idWallet);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error executing update query", e);
        }
    }

    public static void deleteWalletInformation(int idWallet) {
        final String DELETE_INFORMATION_WHERE_ID = System.getenv("DELETE_WALLET");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(DELETE_INFORMATION_WHERE_ID)) {
            stmt.setInt(1, idWallet);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error executing delete query", e);
        }
    }

    public static List<WalletDTO> showWalletInformationWhereId(int idWallets) throws ClassNotFoundException {
        List<WalletDTO> listWalletInformation = new ArrayList<>();
        final String SHOW_WALLET_INFORMATION = System.getenv("SHOW_WALLET_INFORMATION_WHERE_ID");
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(SHOW_WALLET_INFORMATION);) {
            statement.setInt(1, idWallets);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int idWallet = resultSet.getInt("MaViTien");
                int idUser = resultSet.getInt("MaNguoiDung");
                String nameWallet = resultSet.getString("TenNguoiDung");
                long codeWallet = resultSet.getLong("MaCode");
                String expirationDate = resultSet.getString("NgayHetHan");
                String cvv = resultSet.getString("MaMat");
                long money = resultSet.getLong("tien");
                listWalletInformation.add(new WalletDTO(idWallet, idUser, nameWallet, codeWallet, expirationDate, cvv, money));
            }
            System.out.println(listWalletInformation);
        } catch (SQLException e) {
            throw new RuntimeException("Error executing select query", e);
        }
        return listWalletInformation;
    }

    public static int checkIdWallet(long codeWallet) throws ClassNotFoundException {
        int idWallet = -1;
        final String SELECT_QUERY_ID_WALLET = System.getenv("CHECK_ID_WALLET_WHERE_CODE");
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(SELECT_QUERY_ID_WALLET)) {
            stmt.setLong(1, codeWallet);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                idWallet = rs.getInt("MaViTien");
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error executing insert query", e);
        }
        System.out.println("id" + idWallet);
        return idWallet;
    }

    public static void insertWalletMoney(long walletMoney, int idWallet) {
        final String INSERT_WALLET_MONEY = System.getenv("INSERT_QUERY_MONEY");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(INSERT_WALLET_MONEY)) {
            stmt.setLong(1, walletMoney);
            stmt.setInt(2, idWallet);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error executing insert query", e);
        }
    }

    public static void updateWalletMoney(long walletMoney, int idWallet) {
        final String UPDATE_MONEY_WALLET = System.getenv("UPDATE_MONEY_WALLET");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(UPDATE_MONEY_WALLET)) {
            stmt.setLong(1, walletMoney);
            stmt.setInt(2, idWallet);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error executing update query", e);
        }
    }

    public static Long checkMoney(int idWallet) {
        final String CHECK_MONEY_WALLET = System.getenv("CHECK_MONEY_WALLET");
        long money = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(CHECK_MONEY_WALLET)) {
            stmt.setInt(1, idWallet);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                money = rs.getLong("tien");
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error executing select query", e);
        }
        return money;
    }

    public static void setMoney(long money, int idWallet) {
        final String SET_MONEY_WALLET = System.getenv("SET_MONEY_WALLET");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(SET_MONEY_WALLET)) {
            stmt.setLong(1, money);
            stmt.setInt(2, idWallet);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error executing update query", e);
        }
    }
}
