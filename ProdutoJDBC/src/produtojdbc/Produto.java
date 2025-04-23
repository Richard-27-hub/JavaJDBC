package produtojdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import utill.Conexao;

public class Produto {
	private String codProduto;
	private String nomeProduto;
	private double precoProduto;

	public Produto(String codProduto, String nomeProduto, double precoProduto) {
		this.codProduto = codProduto;
		this.nomeProduto = nomeProduto;
		this.precoProduto = precoProduto;
	}

	public boolean incluirProduto() {
		Connection con = Conexao.conectar();

		// Incluindo Produto - inicio
		String sql = "INSERT INTO produto values (?,?,?); ";
		try {
			PreparedStatement stm = con.prepareStatement(sql);
			stm.setString(1, this.codProduto);
			stm.setString(2, this.nomeProduto);
			stm.setDouble(3, this.precoProduto);
			stm.execute();
		} catch (Exception e) {
			if (e instanceof SQLIntegrityConstraintViolationException) {
				System.out.println("Registro Duplicado ! Verifique");
				return false;
			} else if (e instanceof SQLException) {
				System.out.println("Problemas ao inserir Produto ");
				return false;
			}

		}
		return true;
	}

	public void exibir_Informacoes() {
		System.out.println("Codigo..........: " + this.codProduto);
		System.out.println("Nome............: " + this.nomeProduto);
		System.out.println("Preco...........: " + this.precoProduto);
	}

	public String getCodProduto() {
		return codProduto;
	}

	public String getNomeProduto() {
		return nomeProduto;
	}

	public double getPrecoProduto() {
		return precoProduto;
	}
}