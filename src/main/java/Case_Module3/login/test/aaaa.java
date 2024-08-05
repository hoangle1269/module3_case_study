package Case_Module3.login.test;

import Case_Module3.login.model.EWalletsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "aaa",urlPatterns = "/aaa")
public class aaaa extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long code = 9999999999999999L;
        try {
            EWalletsDao.checkIdWallet(code);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
