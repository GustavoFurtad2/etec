/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package vencimentoipva;

/**
 *
 * @author Gu
 */

import javax.swing.JOptionPane;

public class VencimentoIPVA {

    public static void main(String[] args) {

        String entrada;
        entrada = JOptionPane.showInputDialog("Qual é o número final da placa do veículo?");
        
        String dataFinal; // variavel string pra dizer a data final
        
        try {
            
            int numeroFinalPlaca = Integer.parseInt(entrada); // pegar o numero final da placa
        
            switch (numeroFinalPlaca) { // testar cada número de placa

                case 1:

                    dataFinal = "30/04";
                    break;
                case 2:

                    dataFinal = "31/05";
                    break;
                case 3:

                    dataFinal = "30/05";
                    break;
                case 4:

                    dataFinal = "31/07";
                    break;
                case 5:

                    dataFinal = "31/08";
                    break;
                case 6:

                    dataFinal = "30/09";
                    break;
                case 7:

                    dataFinal = "31/10";
                    break;
                case 8:

                    dataFinal = "30/11";
                    break;

                case 9: // como o 9 e 0 tem a mesma data não precisamos dar um break, ele pode continuar
                case 0:

                    dataFinal = "31/12";
                default: // se o número for menor que 0 ou maior que 9 então vai pedir pra digitar um número válido

                    JOptionPane.showMessageDialog(null, "Digite um número valido de 0 a 9.");
                    return;

            } 
            
            JOptionPane.showMessageDialog(null, "A data de vencimento do IPVA é em " + dataFinal); // dizer a data de vencimento
        } 
        catch (NumberFormatException e) { // se não for um número o input dado pelo usuário ele vai pedir para digitar um número valido
            JOptionPane.showMessageDialog(null, "Digite um número valido de 0 a 9.");
        }
    }
    
}