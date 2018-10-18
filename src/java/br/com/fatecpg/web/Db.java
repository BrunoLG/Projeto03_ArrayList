/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

import java.util.ArrayList;

/**
 *
 * @author bruno
 */
public class Db {
    private static final ArrayList<Veiculo> veiculos = new ArrayList<>();
    
    public static ArrayList<Veiculo> getVeiculos(){
        if (veiculos.isEmpty()){
            Veiculo c1 = new Veiculo();
            c1.setDados("MKH-2730", "Nissan", "Versa", "Preto");
            veiculos.add(c1);
           
            Veiculo c2 = new Veiculo();
            c2.setDados("NAU-1622", "Renault", "Duster", "Vermelho");
            veiculos.add(c2);
            
            Veiculo c3 = new Veiculo();
            c3.setDados("AVO-0254", "Ford", "Fiesta", "Cinza");
            veiculos.add(c3);
        }
        return veiculos;
    }
    private static final ArrayList<Empresa> empresas = new ArrayList<>();
    
    public static ArrayList<Empresa> getEmpresas(){
        if (empresas.isEmpty()){
            Empresa c1 = new Empresa();
            c1.setDados("Itaú", "ITAÚ S.A.", "60.872.504/0001-23", "4004-4828", "www.itau.com.br");
            empresas.add(c1);
           
            Empresa c2 = new Empresa();
            c2.setDados("IBM", " IBM BRASIL", "33.372.251/0100-38", "0800-701-4262", "www.ibm.com");
            empresas.add(c2);
            
            Empresa c3 = new Empresa();
            c3.setDados("Lacta", "MONDELEZ LACTA LTDA", "56.993.645/0001-27", "0800-704-1940", "www.lacta.com.br");
            empresas.add(c3);
        }
        return empresas;
    }
    private static final ArrayList<Pessoa> pessoas = new ArrayList<>();
    
    public static ArrayList<Pessoa> getPessoas(){
        if (pessoas.isEmpty()){
            Pessoa c1 = new Pessoa();
            c1.setDados("Eduardo Ribas Emmerich", "441.668.788-59", "eduardo.emmerich@hotmail.com", "(13)99209-1398");
            pessoas.add(c1);
           
            Pessoa c2 = new Pessoa();
            c2.setDados("Bruno", "xxx.xxx.xxx-xx", "bruno@email.com", "(13) 3938-5496");
            pessoas.add(c2);
            
            Pessoa c3 = new Pessoa();
            c3.setDados("Alessandra", "xxx.xxx.xxx-xx", "alessandra@hotmail.com", "(13)11584-2226");
            pessoas.add(c3);
        }
        return pessoas;
    }
}

