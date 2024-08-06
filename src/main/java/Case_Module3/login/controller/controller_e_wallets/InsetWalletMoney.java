package Case_Module3.login.controller.controller_e_wallets;

import Case_Module3.login.model.EWalletsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "insetWalletMoney", urlPatterns = "/insetWalletMoney")
public class InsetWalletMoney extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idWallet = Integer.parseInt(req.getParameter("idWallet"));
        long money = Long.parseLong(req.getParameter("money"));
        long moneys = 0;
        long checkMoney = EWalletsDao.checkMoney(idWallet);
        if (checkMoney == 0) {
            EWalletsDao.setMoney(moneys, idWallet);
        }
        EWalletsDao.insertWalletMoney(money, idWallet);
        resp.sendRedirect("/showListWallet");
    }
}
