package Case_Module3.login.controller.controller_transaction_management;

import Case_Module3.login.model.TransactionDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "updateTransaction",urlPatterns = "/updateTransaction")
public class UpdateTransaction extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idTransaction = Integer.parseInt(req.getParameter("idTransaction"));
//        int idDirectory = Integer.parseInt(req.getParameter("idDirectory"));
        long money = Long.parseLong(req.getParameter("money"));
        String type = req.getParameter("type");
        String dayTrading = req.getParameter("dayTrading");
        String  dateCreated = req.getParameter("dateCreated");
        String latestDate = req.getParameter("latestDate");
        String note = req.getParameter("note");
        TransactionDao.updateTransaction(money,type,dayTrading,dateCreated,latestDate,note,idTransaction);
        resp.sendRedirect("/transactionManagement");


    }
}
