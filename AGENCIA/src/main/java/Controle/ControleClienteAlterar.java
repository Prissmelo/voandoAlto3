package Controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoCliente;
import modelo.Cliente;

/**
 * Servlet implementation class ControleClienteAlterar
 */
@WebServlet("/ClienteAlterado")
public class ControleClienteAlterar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControleClienteAlterar() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int clienteId = Integer.parseInt(request.getParameter("clienteId"));
		Cliente cliente = DaoCliente.findByPK(clienteId);
		
		request.setAttribute("cliente", cliente);
		RequestDispatcher requestDispacher = request.getRequestDispatcher("form.jsp");
		requestDispacher.forward(request,response);
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		
		Cliente cliente = new Cliente();
		
		cliente.setId(Integer.parseInt(request.getParameter("id")));
		cliente.setNome(request.getParameter("nome"));
		cliente.setCpf(request.getParameter("cpf"));
		cliente.setEndereco(request.getParameter("endereco"));
		cliente.setEmail(request.getParameter("email"));
		cliente.setNascimento(request.getParameter("nascimento"));
		cliente.setSituacao(request.getParameter("situacao"));
		
		DaoCliente.update(cliente);
		
		ControleInserirCliente controleInserirCliente = new ControleInserirCliente();
		controleInserirCliente.doGet(request, response);
	}

}
