import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DadoServlet")
public class DadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static int NUM_SIDES = 6; // Declaração de uma constante

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int d1 = rollDice();
		int d2 = rollDice();
		String result = "";
		
		if(d1 == d2) {
			result = "Os dados apresentam o mesmo valor";
		}
		
		else if(d1 > d2 ) {
			result = " O número no 1º dado é maior";
		}
		
		else if(d1 < d2 ) {
			result = " O número no 2º dado é maior";
		}
			
		

		response.setContentType("text/html");

		try (PrintWriter out = response.getWriter()) {
			out.println("<html>");
			out.println("<head>");
			out.println("<title> Lançamento de dados </title>");
			out.println("<style>");
			out.println("body{");
			out.println("     font-family: Arial, sans-serif;");
			out.println("     padding: 20px;");
			out.println("     text-align: center;");
			out.println("     background: url('https://i.pinimg.com/originals/4d/1b/b8/4d1bb82665aafc2a50c2769fc805f55c.gif');");
			out.println("     background-size: cover;");
			out.println("     background-repeat: no-repeat;");
			out.println("}");
			out.println("h1{");
			out.println("   color:pink;");
			out.println("}");
			out.println(".dice-number{");
			out.println("             font-size:40px;");
			out.println("             margin-top: 10px;");
			out.println("             color: blue;");
			out.println("             text-align: center;");
			out.println("}");
			out.println(".dice-label{");
			out.println("            color: Yellow;");
			out.println("}");
			out.println(".msg{");
			out.println("     color:red;");
			out.println("     font-size: xx-large;");
			out.println("     text-align:center;");
			out.println("}");
			out.println("</style>");
			out.println("<h1>Lançamento de dados </h1>");
			out.println("<div class=\"dice-number\"><span class=\"dice-label\">Dado1:</span>" + d1 + "</div>");
			out.println("<div class=\"dice-number\"><span class=\"dice-label\">Dado2:</span>" + d2 + "</div>");
			out.println("<div class=\"msg\">"+result+"</div>");

			out.println("</body>");
			out.println("</html>");

		}
	}

	private int rollDice() {

		Random aleatorio = new Random();
		return aleatorio.nextInt(NUM_SIDES) + 1;

	}
	
	

	}

