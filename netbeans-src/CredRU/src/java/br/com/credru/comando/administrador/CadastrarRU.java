/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.comando.administrador;

import br.com.credru.comando.Comando;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Soriano
 */
public class CadastrarRU implements Comando{

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        try {
            RequestDispatcher rd = request.getRequestDispatcher("administrador/cadastrar_ru.jsp");
            rd.forward(request, response);

        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }
    
}
