package Case_Module3.login.controller.controller_category;

import Case_Module3.login.model.DTO.Category;
import Case_Module3.login.sevice.CategoryDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "categoryService", urlPatterns = "/category")
public class CategoryService extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CategoryDAO categoryDAO;

    public void init() {
        categoryDAO = new CategoryDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "add":
                    addCategory(request, response);
                    break;
                case "edit":
                    updateCategory(request, response);
                    break;
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "add":
                    showAddForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    deleteCategory(request, response);
                    break;
                default:
                    listCategory(request, response);
                    break;
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    private void listCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<Category> categoryList = categoryDAO.selectAllCategory();
        request.setAttribute("listCategory", categoryList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("category/list.jsp");
        dispatcher.forward(request, response);
    }

    private void showAddForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("category/add.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        Category existingCategory = categoryDAO.selectCategory(categoryId);
        RequestDispatcher dispatcher = request.getRequestDispatcher("category/edit.jsp");
        request.setAttribute("category", existingCategory);
        dispatcher.forward(request, response);
    }

    private void addCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String name = request.getParameter("name");
        String notes = request.getParameter("note");

        Category newCategory = new Category(name, notes);
        categoryDAO.addCategory(newCategory);
        response.sendRedirect("category");
    }


    private void updateCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        String name = request.getParameter("name");
        String notes = request.getParameter("notes");

        Category updatedCategory = new Category(categoryId, name, notes);
        categoryDAO.updateCategory(updatedCategory);
        RequestDispatcher dispatcher = request.getRequestDispatcher("category/edit.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("categoryId"));
        categoryDAO.deleteCategory(id);
        List<Category> categoryList = categoryDAO.selectAllCategory();
        request.setAttribute("category", categoryList);
        response.sendRedirect("/category");
    }
}

