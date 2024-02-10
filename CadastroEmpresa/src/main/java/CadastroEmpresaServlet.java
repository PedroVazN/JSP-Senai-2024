import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CadastroEmpresaServlet")
public class CadastroEmpresaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //pegar os parâmetros da requisição
        String nome = request.getParameter("nome");
        String numRegistro = request.getParameter("numRegistro");
        String sexo = request.getParameter("sexo");
        String endereço = request.getParameter("end");
        String telefone = request.getParameter("tel");

        GregorianCalendar calendario = new GregorianCalendar();
        String mensagem = calendario.get(Calendar.AM_PM) == Calendar.AM ? "Bom dia" : "Boa tarde";

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<center>");
        out.println("<title>Cadastro Empresa</title>");
        out.println("<style>");
        out.println("body {");
        out.println("    font-family: Arial, sans-serif;");
        out.println("    margin: 0;");
        out.println("    padding: 0;");
        out.println("    background-color: #f2f2f2;");
        out.println("}");
        out.println(".container {");
        out.println("    width: 80%;");
        out.println("    margin: 0 auto;");
        out.println("    padding: 20px;");
        out.println("    background-color: #fff;");
        out.println("    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);");
        out.println("    margin-top:50px;");
        out.println("}");
        out.println("h1 {");
        out.println("    color: #333;");
        out.println("}");
        out.println("p {");
        out.println("    color: #666;");
        out.println("    margin-bottom: 10px;");
        out.println("}");
        out.println(".saudacao {");
        out.println("    font-size: 1.2em;");
        out.println("    font-weight: bold;");
        out.println("    color: #9370DB;");
        out.println("}");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div class='container'>");
        out.println("<h1>Cadastro Empresa</h1>");
        out.println("<p class='saudacao'>" + mensagem + ", " + nome + "</p>");
        out.println("<p>Seu Numero de Registro é: " + numRegistro + "</p>");
        out.println("<p>Seu Genêro: " + sexo + "</p>");
        out.println("<p>Voce Mora: " + endereço + "</p>");
        out.println("<p>Seu Telefone: " + telefone + "</p>");
        out.println("</div>");
        out.println("</center>");
        out.println("</body>");
        out.println("</html>");
        out.close();
    }
}
