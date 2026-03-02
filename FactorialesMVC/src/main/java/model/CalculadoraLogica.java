/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.math.BigInteger;

/**
 *
 * @author hpede
 */
public class CalculadoraLogica {
    public BigInteger Factorial(int n){
        if(n<0){
            throw new IllegalArgumentException("Por favor, ingresa un número positivo.");
        }
        BigInteger fact = BigInteger.ONE;
        
        for(int i = 2; i<=n;i++){
            fact = fact.multiply(BigInteger.valueOf(i));
        }
        
        return fact;
    }
}
