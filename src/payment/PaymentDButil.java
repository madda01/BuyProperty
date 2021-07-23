package payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentDButil {
	//creating objects
	private static Connection con=null;
	private static Statement state=null;
	private static ResultSet rs=null;
    
	//to get the passed payment details inserted by the customer
	public static boolean insertpayment(String propertyname,String paymentid, String name,String cardno,String cardexpdate, String cvc) {
		
		boolean isSuccess = false;//assign this to false before execution of query
		
		try {
			
			con= payment.DBConnector.getConnection();
			//executing a query
			state=con.createStatement();
			String sql="insert into payment "
					+ "values('"+propertyname+"',0,'"+name+"','"+cardno+"','"+cardexpdate+"','"+cvc+"')";
			//paymentid is unique auto-incremented
			
			int result= state.executeUpdate(sql);
			
			if(result>0) {
				//insertion is successful if result is 1
				isSuccess=true;
			}
			else
				//insertion is unsuccessful
				isSuccess=false;			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;	
	}
	
	//method to get all the payment details saved in the database
	public static List<Payment> getPaymentDetails() {

		//to get all the payment details saved in a tuple
		ArrayList<Payment> pay1 = new ArrayList<>();

		try{
		con = DBConnector.getConnection();
		state = con.createStatement();//executing a query
		String sql = "select * from payment";
		rs=state.executeQuery(sql);

		//assigned details retrieved from the database to variables
		while(rs.next()) {
			String propertyname=rs.getString(1);
			int paymentid=rs.getInt(2);
			String name=rs.getString(3);
			String cardno=rs.getString(4);
			String cardexpdate=rs.getString(5);
			String cvc=rs.getString(6);
			
			Payment p1 = new Payment(propertyname,paymentid, name,cardno, cardexpdate, cvc);
			pay1.add(p1);
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return pay1; //return the payment array object
	}
	
	//method to update a certain payment tuple in the database passed by the paymentid
	public static boolean updatepayment(String propertyname,String paymentid,String name,String cardno, String cardexpdate, String cvc) {
		
		boolean isSuccess = false;//assign this to false before execution of query
		
		try {
			
			con= payment.DBConnector.getConnection();
			state=con.createStatement();//executing a query
			String sql="update payment set propertyname='"+propertyname+"',name='"+name+"',cardno='"+cardno+"',"
					+ "cardexpdate='"+cardexpdate+"',cvc='"+cvc+"'where paymentid='"+paymentid+"'";
			//paymentid is unique auto-incremented
			
			int result=state.executeUpdate(sql);
			
			if(result>0) {
				//insertion is successful
				isSuccess=true;
			}
			else
				//insertion is unsuccessful
				isSuccess=false;	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//method to delete a specific payment detail tuple from the database
	public static boolean deletepayment(String paymentid) 
	{
		boolean isSuccess=false;//assign this to false before execution of query
		
		try {
			
			con = DBConnector.getConnection();
			state=con.createStatement();//executing a query
			
			String sql="delete from payment where paymentid='"+paymentid+"'"; //paymentid is unique auto-incremented
			
			int result=state.executeUpdate(sql);
			
			if(result>0) 
			{	//insertion is successful
				isSuccess=true;
			}
			else
				//insertion is unsuccessful
				isSuccess =false;
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}
