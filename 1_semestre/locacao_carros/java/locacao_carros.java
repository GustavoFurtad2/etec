/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package SPCar;

/**
 *
 * @author Gu
 */

import java.util.Scanner;

public class SPCar {
    
    public static void main(String[] args) {
        
        String modeloCarro; // string para armazenar o nome do carro
        double valorDiarioLocacao; // um double ja que o valor diario de locacao pode ser decimal
        double kmPercorridos; // guardar os km percorridos
        int diasLocacao; // a quantidade de dias so que os dias são recebidos como inteiros
        
        Scanner leitor = new Scanner(System.in); // cria um scanner que vamos usar
        
        System.out.println("Informe o modelo do carro alugado: "); // perguntar
        modeloCarro = leitor.next(); // ler o modelo do carro, o leitor.next retorna ai você guarda na variavel
        System.out.println("Informe o valor(R$) da diaria para locacao: "); // perguntar
        valorDiarioLocacao = leitor.nextDouble(); // ler o valor diario locacao, o leitor.nextDouble retorna ai você guarda na variavel
        System.out.println("Informe a quantidade de dias de locacao: "); // perguntar
        diasLocacao = leitor.nextInt(); // ler os dias de locacao, o leitor.nextInt retorna ai você guarda na variavel
        System.out.println("Informe a quantidade de Km percorridos: "); // perguntar
        kmPercorridos = leitor.nextDouble();  // ler a quantia de km percorridos, o leitor.nextDouble retorna ai você guarda na variavel
        // obvialmente você tem que ler o mesmo tipo da variavel que você quer guardar

        System.out.println("Modelo do carro: " + modeloCarro); // informar modelo do carro
        System.out.println("Valor total a pagar: " + (valorDiarioLocacao * diasLocacao) + (kmPercorridos * 0.20)); // informar o valor total
        
    }
}
