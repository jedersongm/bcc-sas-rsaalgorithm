/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fafic.bcc.bcc.sas.rsaalgorithm.servlets;

import br.edu.fafic.bcc.bcc.sas.rsaalgorithm.Prime;
import br.edu.fafic.bcc.bcc.sas.rsaalgorithm.RSA;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jederson
 */
public class GenerateKeys extends HttpServlet {

    

    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        
        Integer p = Integer.parseInt(request.getParameter("p"));
        Integer q = Integer.parseInt(request.getParameter("q"));
        
        RequestDispatcher dispatcher = null;
        
        if(Prime.isPrime(p) && Prime.isPrime(q)){
           
            RSA rsa = new RSA(BigInteger.valueOf(p.intValue()), BigInteger.valueOf(q.intValue()));
            HttpSession session  =  request.getSession();
            session.setAttribute("rsa",rsa);
            dispatcher = request.getRequestDispatcher("/index.jsp");
            dispatcher.forward(request, response);
        }else if(!Prime.isPrime(p) && !Prime.isPrime(q)){
            request.setAttribute("mensagem", "Números informados não são primos ");
            dispatcher = request.getRequestDispatcher("/generateKeys.jsp");
            dispatcher.forward(request, response);
        }else if(Prime.isPrime(p)){
            request.setAttribute("mensagem", "Número Q informados não é primo ");
            dispatcher = request.getRequestDispatcher("/generateKeys.jsp");
            dispatcher.forward(request, response);
        }else{
            request.setAttribute("mensagem", "Número P informados não é primo ");
            dispatcher = request.getRequestDispatcher("/generateKeys.jsp");
            dispatcher.forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
