package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DAO;
import model.JavaBeans;

@WebServlet(urlPatterns = { "/controller", "/main", "/insert" })
public class controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAO dao = new DAO();
	JavaBeans contato = new JavaBeans();

	public controller() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String action = request.getServletPath();
		System.out.println(action);
		if (action.equals("/main")) {
			contatos(request,response);	
		} else if (action.equals("/insert")) {
			novoContato(request,response);	
	} else {
		response.sendRedirect("index.html");
	}
	}

	// Criação do método Listar Contatos
	protected void contatos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("agenda.jsp");

	}
	
	// Criação do método Novo Contato
		protected void novoContato(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			/*
				TESTE DE RECEBIMENTO DOS DADOS DO FORMULÁRIO
			System.out.println(request.getParameter("nome"));
			System.out.println(request.getParameter("fone"));
			System.out.println(request.getParameter("email"));
			response.sendRedirect("index.html");*/
			
			// Setar as váriaveis 
			
			contato.setNome(request.getParameter("nome"));
			contato.setFone(request.getParameter("fone"));
			contato.setEmail(request.getParameter("email"));
			
			// Invocar o método inserirContato passando o objeto contato
			dao.inserirContato(contato);
			//redirecionar para o documento agenda.jsp
			response.sendRedirect("main");
			
		}
}
