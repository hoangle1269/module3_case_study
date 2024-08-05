package Case_Module3.login.controller.controller_category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "categoryListServlet", urlPatterns = "/categories")
public class CategoryListServlet extends HttpServlet {
    private CategoryService categoryService = new CategoryServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categories = categoryService.getAllCategories();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("views/categoryList.jsp").forward(request, response);
    }
}
