/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

/**
 *
 * @author Soriano
 */
public class FabricaDAOMySQL implements FabricaDAOInterface{

    @Override
    public AlimentoDAO getAlimento() {
        return new AlimentoDAOMySQL();
    }

    @Override
    public PerfilDAO getPerfil() {
        return new PerfilDAOMySQL();
    }

    @Override
    public RefeicaoDAO getRefeicao() {
        return new RefeicaoDAOMySQL();
    }

    @Override
    public RestauranteDAO getRestaurante() {
        return new RestauranteDAOMySQL();
    }

    @Override
    public TransacaoDAO getTransacao() {
        return new TransacaoDAOMySQL();
    }

    @Override
    public UsuarioDAO getUsuario() {
        return new UsuarioDAOMySQL();
    }
    
}
