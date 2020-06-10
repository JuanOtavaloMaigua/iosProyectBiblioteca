//
//  Libro.swift
//  ProjectOneBiblioteca
//
//  Created by Juan Otavalo on 3/9/18.
//  Copyright © 2018 Juan Otavalo. All rights reserved.
//

import Foundation

class Libro{
    var titulo: String = ""
    var codigo: String = ""
    var autor: String = ""
    var editorial: String = ""
    
    init(titulo : String, codigo : String, autor: String, editorial: String){
        self.titulo = titulo
        self.codigo = codigo
        self.autor = autor
        self.editorial = editorial
    }
}
