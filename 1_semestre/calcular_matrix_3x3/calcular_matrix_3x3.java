/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.calcularmatrix3x3;

/**
 *
 * @author Gu
 */

import java.util.Scanner;

public class CalcularMatrix3x3 {

    public static void main(String[] args) {

        float soma = 0; // variavel pra calcular soma
        
        float[][] matriz = new float[3][3]; // matriz onde vamos guardar os valores

        Scanner scanner = new Scanner(System.in);
        
        for (int y = 0; y < 3; y++) { // ja que temos 3 de altura na matriz então vai ser 3 iterações
            
            for (int x = 0; x < 3; x++) { // ai combinamos com as 3 iterações  aqui, 3 * 3 = 9
                
                System.out.println("Digite o item " + (x + 1 + y)); // calcular qual o numero do item que vai ser digitado(+1 ja que começa no 0)
                soma += scanner.nextInt(); // pegar o numero
            }
        }
        
        System.out.println("A soma dos itens da matriz e " + soma); // resultado da soma
        
        scanner.close();
    }
}
