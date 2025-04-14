/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.pesquisaatendimento;

/**
 *
 * @author Gu
 */
import java.util.Scanner;

public class PesquisaAtendimento {

    public static void main(String[] args) {
       
        // variáveis int pra guardar a quantidade de notas excelentes e ruins
        int excelente = 0;
        int ruim = 0;
        
        Scanner scanner = new Scanner(System.in);
        
        for (int i = 0; i < 10; i++) {
            
            System.out.println("Digite seu nome: ");
            String nome = scanner.nextLine();
            
            System.out.println("Digite sua idade: ");
            int idade = scanner.nextInt();
            scanner.nextLine();
            
            System.out.println("Avalie o atendimento prestado:");
            System.out.println("1 - EXCELENTE");
            System.out.println("2 - BOM");
            System.out.println("3 - RUIM");
            System.out.println("Digite sua avaliacao (1, 2 ou 3):\n");
            
            int opiniao = scanner.nextInt();
            scanner.nextLine();
            
            if (opiniao == 1) { // opiniao 1 é excelente então acrescenta
                excelente++;
            } 
            else if (opiniao == 3) { // opiniao 2 é ruim então acrescenta
                ruim++;
            }
            // obs: não fiz opção 2 porque mesmo que o usuario possa escrever você apenas
            // disse na ativade para mostrar o excelente e ruim
            
            System.out.println("\n"); // Linha em branco para facilitar a leitura
        }

        // Exibindo os resultados
        System.out.println("Quantidade de respostas EXCELENTE: " + excelente);
        System.out.println("Quantidade de respostas RUIM: " + ruim);
        
        scanner.close(); // Fecha o scanner
    }
}
