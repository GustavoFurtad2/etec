/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.calcularcomissao;

/**
 *
 * @author Gu
 */

import java.util.Scanner;

public class CalcularComissao {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in); // criar um scanner para o usuário poder utilizar depois

        String desejaContinuar = "s"; // essa string vai identificar se vamos recalcular tudo
        
        while (desejaContinuar.equals("s")) { // se desejamos continuar então ele vai perguntar
            
            System.out.print("Digite o valor total das vendas: R$ ");
            double valorVendas = scanner.nextDouble(); // guardar o valor das vendas como double, ja que pode ter centavos
             
            System.out.print("Digite a quantidade de vendas realizadas: ");
            int quantidadeVendas = scanner.nextInt(); // quantidade de vendas realizadas, bom, não é double até porque nem vende um produto pela metade kk
             
            double comissao = 0; // double pra calcular a comissao final
             
            if (valorVendas < 1000) { // se menor que 1000
                comissao = valorVendas * 0.05; // 5% de comissão
            } 
            else if (valorVendas >= 1000 && valorVendas <= 5000) { // de 1000 a 5000
                comissao = valorVendas * 0.07; // 7% de comissão
            } 
            else { // superior a 5000
                comissao = valorVendas * 0.10; // 10% de comissão
            }
            
            if (quantidadeVendas > 10) { // se a quantidade vendas for maior que 10 então tem bonus
                comissao += valorVendas * 0.02; // bônus de 2%
            }
            
            System.out.println("Comissao calculada: R$ " + comissao); // mostrar a comissao calculada
            
            System.out.println("Deseja realizar um novo calculo? (s/n): "); // perguntar se um novo calculo deve ser feito
            desejaContinuar = scanner.next(); // se o usuário digitar "s" então vai continuar, "n" ele para
        }
        
        scanner.close(); // fecha o nosso objeto de scanner
    }
}