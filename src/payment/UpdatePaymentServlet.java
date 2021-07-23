package payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String propertyname= request.getParameter("propertyname");
		String paymentid=request.getParameter("paymentid");
		String name=request.getParameter("name");
		String cardno=request.getParameter("cardno");
		String cardexpdate=request.getParameter("cardexpdate");
		String cvc=request.getParameter("cvc");
		
		boolean istrue;
		
		istrue= PaymentDButil.updatepayment(propertyname,paymentid,name, cardno, cardexpdate, cvc);
		
		//if the data was passed to the database successfully 
		if(istrue==true) {
			//redirecting from the servlet to
			RequestDispatcher dis= request.getRequestDispatcher("admin_success.jsp");
			dis.forward(request, response);
		}
		//if the data wasn't passed to the database successfully 
		else {
			//redirecting from the servlet to
			RequestDispatcher dis= request.getRequestDispatcher("admin_unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
