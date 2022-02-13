package Conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class ConexaoBanco {
	
	
	private final static String url = "jdbc:mysql://localhost:3306/voando";
	private final static  String user = "root";
	private final static String password ="Luiz@1234";
	
	public ConexaoBanco() {}
	
	public Statement createStatement () {
	
		   try {
	            Statement statement = createConnection().createStatement();
	            System.out.println("A criação do Statement foi bem-sucedida !");
	            return statement;
	            
	        } catch(SQLException e) {
	            System.out.println("Acriação do Statement malsucedida. Erro: " + e.getMessage());
	            return null;
	        }
			
	}
		
		public static Connection createConnection() {
		
		  try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            System.out.println("O driver de conex�o foi encontrado !");
	        } catch(ClassNotFoundException e) {
	            System.out.println("O driver de conex�o com o MySQL, n�o foi encontrado neste projeto. Erro: " + e.getMessage());
	        }
		  
		  
	        try {
	            Connection connection = DriverManager.getConnection(url, user, password);
	            System.out.println("A conex�o com o MySQL foi bem-sucedida !");
	            return connection;
	            
	        } catch(SQLException e) {
	            System.out.println("Conex�o com banco de dados MySQL malsucedida. Erro: " + e.getMessage());
	            return null;
	        }
		
		
	}

}
