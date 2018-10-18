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
            c1.setDados("Itaú", "ITAÚ UNIBANCO HOLDING S.A.", "60.872.504/0001-23", "4004-4828", "https://www.itau.com.br/");
            empresas.add(c1);
           
            Empresa c2 = new Empresa();
            c2.setDados("IBM", " IBM BRASIL-INDUSTRIA MAQUINAS E SERVICOS LIMITADA", "33.372.251/0100-38", "0800-701 4262", "https://www.ibm.com/br-pt/");
            empresas.add(c2);
            
            Empresa c3 = new Empresa();
            c3.setDados("Lacta", "MONDELEZ LACTA ALIMENTOS LTDA", "56.993.645/0001-27", "0800-704 1940", "https://www.lacta.com.br/");
            empresas.add(c3);
        }
        return empresas;
    }
}

