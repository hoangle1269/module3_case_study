package Case_Module3.login.controller.controller_home_wallets;

import Case_Module3.login.model.DTO.WalletDTO;
import Case_Module3.login.model.EWalletsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "showListWallets", urlPatterns = "/showListWallet")
public class ShowListWallets extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<WalletDTO> listWallets;
        try {
            listWallets = EWalletsDao.showWalletInformation();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        req.setAttribute("listWallets", listWallets);
        req.getRequestDispatcher("/view/e_wallets/listWallets.jsp").forward(req, resp);
    }
}
