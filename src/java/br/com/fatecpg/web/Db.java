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
}
