package Case_Module3.login.sevice;

import Case_Module3.login.model.DTO.Category;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO implements ICategory {
    private String jdbcUrl = "jdbc:mysql://localhost:3306/quan-ly-tai-chinh";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String SELECT_ALL_CATEGORIES = "SELECT * FROM danhmuc;";
    private static final String INSERT_CATEGORY_SQL = "INSERT INTO danhmuc (Ten, GhiChu) VALUES (?,?);";
    private static final String UPDATE_CATEGORY_SQL = "UPDATE danhmuc SET Ten=?, GhiChu=? WHERE categoryId=?;";
    private static final String DELETE_CATEGORY_SQL = "DELETE FROM danhmuc WHERE MaDanhMuc=?;";
    private static final String SELECT_CATEGORY_BY_ID = "SELECT * FROM danhmuc WHERE MaDanhMuc=?;";

    public CategoryDAO() {

    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        try {
            connection = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public List<Category> selectAllCategory() {
        List<Category> category = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CATEGORIES)) {
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int CategoryId = resultSet.getInt("MaDanhMuc");
                int UserId = resultSet.getInt("MaNguoiDung");
                String name = resultSet.getString("Ten");
                String note = resultSet.getString("GhiChu");
                Timestamp creatAt = resultSet.getTimestamp("NgayTao");
                Timestamp updateAt = resultSet.getTimestamp("NgayCapNhat");
                category.add(new Category(CategoryId, UserId, name, note, creatAt, updateAt));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return category;
    }

    @Override
    public void addCategory(Category category) throws SQLException {
        System.out.println(INSERT_CATEGORY_SQL);
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CATEGORY_SQL)) {
            preparedStatement.setString(1, category.getName());
            preparedStatement.setString(2, category.getNotes());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public Category selectCategory(int id) {
        Category category = null;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CATEGORY_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int categoryId = resultSet.getInt("MaDanhMuc");
                int userId = resultSet.getInt("MaNguoiDung");
                String name = resultSet.getString("Ten");
                String note = resultSet.getString("GhiChu");
                Timestamp createdAt = resultSet.getTimestamp("NgayTao");
                Timestamp updatedAt = resultSet.getTimestamp("NgayCapNhat");
                category = new Category(categoryId, userId, name, note, createdAt, updatedAt);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return category;
    }

    @Override
    public boolean updateCategory(Category category) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_CATEGORY_SQL)) {
            statement.setString(1, category.getName());
            statement.setString(2, category.getNotes());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    @Override
    public boolean deleteCategory(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_CATEGORY_SQL)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
