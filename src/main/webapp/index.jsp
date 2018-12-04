<%-- 
    Document   : index
    Created on : 03/12/2018, 22:25:42
    Author     : jederson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="callbacks_container">
    <ul class="slides" id="slides">
        <li>
            1. Escolhe-se dois números primos extensos, p e q
            2. Calcula-se n = p × q e z = (p - 1) × (q - 1).
            3. Escolhe-se um número d tal que z e d sejam primos entre si.
            4. Encontra-se e de forma que (e × d ) mod z = 1
        </li>
        <li>
            • O texto simples (uma string de bits) é dividido em
            blocos, de modo que cada mensagem de texto simples,
            P , fique no intervalo 0 ≤ P < n.
            • Criptografar a mensagem P – calcula-se C = P e (mod
            n).
            • Descriptografar C – calcula-se P = C d (mod n).
            • É possível provar que, para todo P na faixa
            especificada, as funções de criptografia e descriptografia
            são inversas entre si.
        </li>
        <li>
            • Para realizar a criptografia, são necessários "e" e "n“.
            • Para a descriptografia, são necessários "d" e "n".
            • Portanto a chave pública consiste no par (e,n) e a chave
            privada consiste em (d,n).
            • A segurança do método se baseia na dificuldade de fatorar
            números extensos.
            • Se pudesse fatorar o valor n (publicamente conhecido), seria
            possível determinar p e q para, a partir destes, encontrar z
            e, então, seria possível encontrar d, porém fatorar números
            extensos é extremamente difícil.
        </li>
    </ul>
</div>
