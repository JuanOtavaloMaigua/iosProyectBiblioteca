//
//  Bibilioteca.swift
//  ProjectOneBiblioteca
//
//  Created by Juan Otavalo on 3/9/18.
//  Copyright © 2018 Juan Otavalo. All rights reserved.
//

import Foundation

class Biblioteca {
    var Libros = [Libro]()
    
    //Para la insercion de libros
    func insercion(Libro : Libro)-> String {
        let codInsertado = Libro.codigo
        if validacion(CodigoBuscado: codInsertado) == false {
            Libros.append(Libro)
            return "Su libro ha sido ingresado"
        }
        return "Ya existe el codigo de libro ingresado"
    }
    
    func validacion(CodigoBuscado:String)->Bool{
        if(Libros.capacity>0){
            for BusquedaCode in Libros{
                if BusquedaCode.codigo == CodigoBuscado{
                    return true
                }
            }
        }
        return false
    }
    
    //Modificar un libro
    func modificacion(Titulomodificar: String, CodigoModificar:String, AutorModificar: String, EditorialModificar:String){
        for Buscando in Libros{
        if Buscando.codigo == CodigoModificar{
            if Titulomodificar != ""{
                Buscando.titulo = Titulomodificar
            }
            if AutorModificar != ""{
                Buscando.autor = AutorModificar
            }
            if EditorialModificar != ""{
                Buscando.editorial = EditorialModificar
            }
        }
            else{
                
            }
    }
    }

    
    //Busqueda de Libro por codigo
    func buscar(codigo: String)-> String{
        var data: String = ""
        for ItLibros in Libros {
            if (ItLibros.codigo == codigo){
                data = " Aut: "+ItLibros.autor + " Cod: " +
                    ItLibros.codigo +
                    " Edit: "+ItLibros.editorial +
                    " Titulo: "+ItLibros.titulo
                return data
            }
        }
        return "No encontrado"
    }
    
    //Impresion
    func impresionData()->String{
        var textFi:String = ""
        var tim:String = ""
        for Libaries in Libros{
            textFi = "Titulo: "+Libaries.titulo + " Codigo: " + Libaries.codigo + " Autor: " + Libaries.autor + " Editorial: " + Libaries.editorial + "\n"
            tim = textFi + tim
        }
        return tim
    }
    
    //Eliminar libro
    func eliminarLibro(codigoEliminacion: String){
        var counter = 0
        for SetEliminacion in Libros{
            if SetEliminacion.codigo == codigoEliminacion{
                Libros.remove(at: counter)
            }
            counter+=1
        }
    }
    
    func eliminarTodo(){
        Libros.removeAll()
    }
}
