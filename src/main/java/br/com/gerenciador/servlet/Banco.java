package br.com.gerenciador.servlet;

import java.util.ArrayList;
import java.util.List;

public class Banco {

	private static List<Empresa> empresas = new ArrayList<>();
	private static Integer chaveSequencial = 1;
	
	static {
		Empresa empresa = new Empresa();
		empresa.setId(chaveSequencial++);
		empresa.setNome("Evo Systems");
		
		Empresa empresa1 = new Empresa();
		empresa1.setId(chaveSequencial++);
		empresa1.setNome("Bluesoft");
		
		empresas.add(empresa);
		empresas.add(empresa1);
	}
	
	public void adiciona(Empresa empresa) {
		empresa.setId(Banco.chaveSequencial++);
		empresas.add(empresa);
		System.out.println(empresa);
	}
	
	public List<Empresa> getEmpresas(){
		return Banco.empresas;
	}
	
	public void removeEmpresa(Integer id) {
		for (Empresa empresa : empresas) {
			if(empresa.getId() == id) {
				empresas.remove(empresa);
			}
			
		}
	}

}
