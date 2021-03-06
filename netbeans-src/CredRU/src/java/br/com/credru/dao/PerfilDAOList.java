/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Perfil;
import br.com.credru.model.TipoPerfil;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Soriano
 */
public class PerfilDAOList implements PerfilDAO{
    private static List<Perfil> perfis = new ArrayList<>();

    @Override
    public boolean setPerfil(Perfil p) {
        for(Perfil temp : PerfilDAOList.perfis){
            if(TipoPerfil.getCodigo(temp.getTipo()) == TipoPerfil.getCodigo(p.getTipo())){
                return false;
            }
        }
        PerfilDAOList.perfis.add(p);
        return true;
    }

    @Override
    public Perfil getPerfil(TipoPerfil tipo) {
        for(Perfil p : PerfilDAOList.perfis){
            if(TipoPerfil.getCodigo(p.getTipo()) == TipoPerfil.getCodigo(tipo)){
                return p;
            }
        }
        return null;
    }

    @Override
    public List<Perfil> getPerfil() {
        return new ArrayList<>(PerfilDAOList.perfis);
    }

    @Override
    public boolean editPerfil(Perfil p1, Perfil p2) {
        if(TipoPerfil.getCodigo(p1.getTipo()) == TipoPerfil.getCodigo(p2.getTipo()) || getPerfil(p2.getTipo()) == null){
            for(int i = 0; i < PerfilDAOList.perfis.size(); i++){
                Perfil temp = PerfilDAOList.perfis.get(i);
                
                if(TipoPerfil.getCodigo(temp.getTipo()) == TipoPerfil.getCodigo(p1.getTipo())){
                    PerfilDAOList.perfis.set(i, p2);
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public boolean removerPerfil(Perfil p) {
        for(int i = 0; i < PerfilDAOList.perfis.size(); i++){
            Perfil temp = PerfilDAOList.perfis.get(i);
            
            if(TipoPerfil.getCodigo(temp.getTipo()) == TipoPerfil.getCodigo(p.getTipo())){
                PerfilDAOList.perfis.remove(i);
                return true;
            }
        }
        return false;
    }
}
