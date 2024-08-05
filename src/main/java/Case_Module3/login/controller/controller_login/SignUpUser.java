package Case_Module3.login.controller.controller_login;

import Case_Module3.login.model.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "singUpUser", urlPatterns = "/SignUp")
public class SignUpUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String passwordConfirm = req.getParameter("password-confirm");
        boolean checkPassword = false;
        boolean checkAccountSignUpUser;

        if (!password.equals(passwordConfirm)) {
            req.setAttribute("errorPassword", checkPassword);
            req.getRequestDispatcher("view/login/login.jsp").forward(req, resp);
            return;
        }

        try {
            checkAccountSignUpUser = UserDao.checkAccountSignUpUser(email);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        if (!checkAccountSignUpUser) {
            req.setAttribute("errorEmail", checkAccountSignUpUser);
            req.getRequestDispatcher("view/login/login.jsp").forward(req, resp);
            return;
        }

        UserDao.signUpUser(email, password);
        req.getRequestDispatcher("view/login/login.jsp").forward(req, resp);
    }

}

