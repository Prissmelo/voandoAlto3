package dao;


import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;
import Conexao.ConexaoBanco;

import modelo.Cliente;  



public class DaoCliente implements CRUD {

	
	
	private static Connection connection = ConexaoBanco.createConnection();
	private static String sql;
			
				
				public static void create(Cliente cliente) {
					 sql = "INSERT INTO Clientes Values (null, ?, ?, ?, ?, ?, ?)";
					
					 try {
						 PreparedStatement preparedStatement = connection.prepareStatement(sql);
						 
						 
						 preparedStatement.setString(1, cliente.getNome());
						 preparedStatement.setString(2, cliente.getCpf());
						 preparedStatement.setString(3, cliente.getEndereco());
						 preparedStatement.setString(6, cliente.getEmail());
						 preparedStatement.setString(5, cliente.getNascimento());
						 preparedStatement.setString(4, cliente.getSituacao());
						
						
						
						 preparedStatement.executeUpdate();
						 
						 System.out.println("--correct insert on database");
						 
					 } catch (SQLException e) {
						 System.out.println("--incorrect insert on database." + e.getMessage());
						 
					 }
					
					
		};
				
				public static void delete(int clienteId) {
					
				sql = "DELETE FROM clientes WHERE id = ?";
				
				
				try {
					
					PreparedStatement preparedStatement = connection.prepareStatement(sql);
					
					preparedStatement.setInt(1,clienteId);
					preparedStatement.executeUpdate();
					
					System.out.println("--correto deletar o cliente");
					
					
				}catch (SQLException e ) {
					System.out.println("--incorreto deletar o cliente"+ e.getMessage());
					
				}
					
										
		};
				
				public static List<Cliente> find(String pesquisa){
				
					
				sql = String.format("SELECT * FROM Clientes WHERE nome like '%s%%' OR cpf LIKE '%s%%' ", pesquisa, pesquisa);
				List<Cliente> clientes = new ArrayList<Cliente>();
				
				try {
					Statement statement = connection.createStatement();
					ResultSet resultSet = statement.executeQuery(sql);
					
					
					while (resultSet.next()) {
						
						Cliente cliente = new Cliente();
						
						cliente.setId(resultSet.getInt("id"));
						cliente.setNome(resultSet.getString("nome"));
						cliente.setCpf(resultSet.getString("cpf"));
						cliente.setEndereco(resultSet.getString("endereco"));
						cliente.setEmail(resultSet.getString("email"));
						cliente.setNascimento(resultSet.getString("nascimento"));
						cliente.setSituacao(resultSet.getString("situacao"));
						
						
						
						clientes.add(cliente);
						
					}
					
					System.out.println("correct find clientes");
					return clientes;
					
				} catch(SQLException e) {
					System.out.println("-incorrect find clientes" + e.getMessage());
					return null;
				}
				
				
		}
				
				public static Cliente findByPK(int clienteId) {
					
					sql = String.format("SELECT * FROM Clientes WHERE id = %d", clienteId);
					
					
					try {
						Statement statement = connection.createStatement();
						ResultSet resultSet = statement.executeQuery(sql);
						Cliente cliente = new Cliente();
						
						while (resultSet.next()) {
						
							
							cliente.setId(resultSet.getInt("id"));
							cliente.setNome(resultSet.getString("nome"));
							cliente.setCpf(resultSet.getString("cpf"));
							cliente.setEndereco(resultSet.getString("endereco"));
							cliente.setEmail(resultSet.getString("email"));
							cliente.setNascimento(resultSet.getString("nascimento"));
							cliente.setSituacao(resultSet.getString("situacao"));
							
									
						}
						
						System.out.println("correct find by pk=p0-o clientes");
						return cliente;
						
					
						
					} catch(SQLException e) {
						System.out.println("-incorrect update clientes" + e.getMessage());
						return null;
			}
					
					
					
					
				
		}
				
				public static void update(Cliente cliente) {
					sql = "UPDATE clientes SET nome=?, cpf=?, endereco=?, email=?, nascimento=?, situacao=? WHERE id=?";
					
					
					try {
						
						PreparedStatement preparedStatement = connection.prepareStatement(sql);

						preparedStatement.setString(1, cliente.getNome());
						preparedStatement.setString(2, cliente.getCpf());
						preparedStatement.setString(3, cliente.getEndereco());
						preparedStatement.setString(4, cliente.getEmail());
						preparedStatement.setString(5, cliente.getNascimento());
						preparedStatement.setString(6, cliente.getSituacao());
						preparedStatement.setInt(7, cliente.getId());
						
						preparedStatement.executeUpdate();
						
						System.out.println("correct update on database");
						
						
					} catch (SQLException e) {
						System.out.println("--incorrect update on database");
						
					}
					
				
					
				}
	}
					

