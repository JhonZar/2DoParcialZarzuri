/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emergentes.dao;

import com.emergentes.modelo.Libro;
import java.util.List;

/**
 *
 * @author zerlu
 */
public interface LibroDAO {
    public void insert(Libro libro) throws Exception;
    public void update(Libro libro) throws Exception;
    public void delete(int id) throws Exception;
    public Libro getById(int id) throws Exception;
    public List<Libro> getAll() throws Exception;  
}
