package Case_Module3.login.controller.controller_add_user_information;

import Case_Module3.login.model.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "addUserInformation", urlPatterns = "/addUserInformation")
public class AddUserInformation extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        int age = Integer.parseInt(req.getParameter("age"));
        int phoneNumber = Integer.parseInt(req.getParameter("phone"));
        String address = req.getParameter("address");
        HttpSession session = req.getSession();
        String email = (String) session.getAttribute("userEmail");
        UserDao.addUserInfomation(name,age,phoneNumber,address,email);
resp.sendRedirect("/controllerHomePage");
    }
}
