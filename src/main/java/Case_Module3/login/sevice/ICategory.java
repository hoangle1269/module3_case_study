package Case_Module3.login.sevice;


import Case_Module3.login.model.DTO.Category;

import java.sql.SQLException;
import java.util.List;


public interface ICategory {
    public List<Category> selectAllCategory();

    public void addCategory(Category category) throws SQLException;

    public Category selectCategory(int id);

    public boolean updateCategory(Category category) throws SQLException;

    public boolean deleteCategory(int id) throws SQLException;
}
