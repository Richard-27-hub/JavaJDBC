package produtojdbc;

import javax.swing.JOptionPane;

public class Principal {

	public static void main(String[] args) {
		String vCodProduto, vNomeProduto;
		Double vPrecoProduto;
		vCodProduto   = JOptionPane.showInputDialog("Código");
		vNomeProduto  = JOptionPane.showInputDialog("Nome");
		vPrecoProduto = 1200.00;
		
		Produto p1 = new Produto(vCodProduto,vNomeProduto, vPrecoProduto);
		if (p1.incluirProduto()) {
			System.out.println("Produto incluído com sucesso");
			
		}

	}

}
