/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fafic.bcc.bcc.sas.rsaalgorithm;

/**
 *
 * @author jederson
 */
public class Prime {
    
    public static boolean isPrime(Integer num){
        
        for(int i = 2; i < num; i++){
            if(num % i == 0) return false;
        }
        return true;
    }
}
