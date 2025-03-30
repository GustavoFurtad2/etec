/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Gu
 */
import javax.swing.JOptionPane;

public class CalcularDesconto {
    
        public static void main(String[] args) {

            String entrada;
            entrada = JOptionPane.showInputDialog("Qual foi o valor total da compra?");
            
            double valor = Double.parseDouble(entrada);
            
            if (valor < 200) {
                double valorComDesconto = valor - (valor * 5 / 100);
                JOptionPane.showMessageDialog(null, "Seu desconto é de 5%, total ficou: " + String.format("%.2f", valorComDesconto));
            }
            else if (valor >= 200 || valor < 300) {
                double valorComDesconto = valor - (valor * 10 / 100);
                JOptionPane.showMessageDialog(null, "Seu desconto é de 10%, total ficou: " + String.format("%.2f", valorComDesconto));
            }
            else if (valor >= 300) {
                double valorComDesconto = valor - (valor * 15 / 100);
                JOptionPane.showMessageDialog(null, "Seu desconto é de 15%, total ficou: " + String.format("%.2f", valorComDesconto));
            }
        }
}
