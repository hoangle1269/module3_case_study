package Case_Module3.login.controller.controller_e_wallets;

import Case_Module3.login.model.EWalletsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "addEWallets", urlPatterns = "/addEWallets")
public class AddEWallets extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String number_raw = req.getParameter("number");
        String cleanedInputNumber = number_raw.replaceAll("\\s+", "");
        long number = Long.parseLong(cleanedInputNumber);
        String date = req.getParameter("date");
        String cvv = req.getParameter("cvv");
        HttpSession session = req.getSession();
        String email = (String) session.getAttribute("userEmail");
        int idUser = EWalletsDao.checkIdUser(email);
        EWalletsDao.addEWallets(name, number, date, cvv, idUser);
        resp.sendRedirect("/showListWallet");
    }
}
