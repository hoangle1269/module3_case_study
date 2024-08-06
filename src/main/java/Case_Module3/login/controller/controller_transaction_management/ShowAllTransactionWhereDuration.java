package Case_Module3.login.controller.controller_transaction_management;

import Case_Module3.login.model.DTO.TransactionDTO;
import Case_Module3.login.model.TransactionDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "showAllTransactionWhereDuration", urlPatterns = "/showAllTransactionWhereDuration")
public class ShowAllTransactionWhereDuration extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<TransactionDTO> listTransaction = new ArrayList<TransactionDTO>();
        String dayStart = req.getParameter("dayStart");
        String dayEnd = req.getParameter("dayEnd");
        listTransaction = TransactionDao.showTransactionWhereDuration(dayStart, dayEnd);
        List<Long> limbAndAutumn = new ArrayList<Long>();
        long autumn = 0;
        long limb = 0;
        if (!listTransaction.isEmpty()) {
            for (TransactionDTO tx : listTransaction) {
                if (tx.getType().equals("chi")) {
                    limb += tx.getMoney();
                } else {
                    autumn += tx.getMoney();
                }
            }
        }
        limbAndAutumn.add(limb);
        limbAndAutumn.add(autumn);
        req.setAttribute("limbAndAutumn", limbAndAutumn);
        req.setAttribute("listTransactions", listTransaction);
        req.getRequestDispatcher("/view/transaction_management/transactionManagement.jsp").forward(req, resp);
    }
}