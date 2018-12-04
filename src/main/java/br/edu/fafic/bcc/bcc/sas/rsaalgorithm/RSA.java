/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fafic.bcc.bcc.sas.rsaalgorithm;

import java.math.BigInteger;
import java.util.Random;
import static javafx.scene.input.KeyCode.N;

/**
 *
 * @author jederson
 */
public class RSA {
    
    private BigInteger p;
    private BigInteger q;
    private BigInteger n;
    private BigInteger z;
    private BigInteger e;
    private BigInteger d;
    private final int bitlength = 1024;
    private Random     r;
    
    
    public RSA(BigInteger p, BigInteger q){
        
        r = new Random();
        this.p = p;
        this.q = q;
        this.n = p.multiply(q);
        this.z = p.subtract(BigInteger.ONE).multiply(q.subtract(BigInteger.ONE));
        this.e = BigInteger.probablePrime(bitlength / 2, r);
        while (z.gcd(e).compareTo(BigInteger.ONE) > 0 && e.compareTo(z) < 0)
        {
            this.e.add(BigInteger.ONE);
        }
        this.d = e.modInverse(z);
    }
    
    private static String bytesToString(byte[] encrypted)
    {
        String test = "";
        for (byte b : encrypted)
        {
            test += Byte.toString(b);
        }
        return test;
    }
    
    // Encrypt message
    public byte[] encrypt(byte[] message)
    {
        return (new BigInteger(message)).modPow(this.e, this.n).toByteArray();
    }
 
    // Decrypt message
    public byte[] decrypt(byte[] message)
    {
        return (new BigInteger(message)).modPow(this.d, this.n).toByteArray();
    }

    public BigInteger getP() {
        return p;
    }

    public void setP(BigInteger p) {
        this.p = p;
    }

    public BigInteger getQ() {
        return q;
    }

    public void setQ(BigInteger q) {
        this.q = q;
    }

    public BigInteger getN() {
        return n;
    }

    public void setN(BigInteger n) {
        this.n = n;
    }

    public BigInteger getZ() {
        return z;
    }

    public void setZ(BigInteger z) {
        this.z = z;
    }

    public BigInteger getE() {
        return e;
    }

    public void setE(BigInteger e) {
        this.e = e;
    }

    public BigInteger getD() {
        return d;
    }

    public void setD(BigInteger d) {
        this.d = d;
    }

       
    
}
