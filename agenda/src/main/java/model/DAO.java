package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DAO {

	/* Módulo de conexão */

	// Parâmetros de conexão

	private String driver = "com.mysql.cj.jdbc.Driver"; // padrão do MySQL
	private String url = "jdbc:mysql://127.0.0.1:3306/dbagenda?useTimezone=true&serverTimezone=UTC";
	private String user = "root";
	private String password = "admin";

	// Métodos de conexão

	private Connection conectar() {
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			return con;

		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

	/*
	 * teste de conexão 
	 * public void testeConexao() { 
	 * try {
	 *  Connection con = conectar(); 
	 *  System.out.println(con); 
	 *  con.close();
	 * 
	 * } catch (Exception e) { System.out.println(e); }
	 * 
	 * }
	 */

	/* *CRUD CREATE* */

	public void inserirContato(JavaBeans contato) {
		
		String create = "insert into contatos (nome,fone,email)values(?,?,?)";
		
		try {
			// Abrir a conexão com o DataBase
			
			// Default
			Connection con = conectar();
			
			// Preparar a query para execução do DataBase
			PreparedStatement pst = con.prepareStatement(create);
			
			//Substituir os parâmetros (?) pelo contúdo das variáveis
			pst.setString(1, contato.getNome());
			pst.setString(2, contato.getFone());
			pst.setString(3, contato.getEmail());
			
			//Executar a Query
			pst.executeUpdate();
			con.close();			
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
