//
//  ViewController.swift
//  ProjectOneBiblioteca
//
//  Created by Juan Otavalo on 3/9/18.
//  Copyright © 2018 Juan Otavalo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ModificacionButton.isEnabled = false
        
    }
    //IBOutlet declaration
    @IBOutlet weak var ShowInformation: UILabel!
    @IBOutlet weak var IcodigoInsertado: UITextField!
    @IBOutlet weak var ITitulo: UITextField!
    @IBOutlet weak var ICodigo: UITextField!
    @IBOutlet weak var IAutor: UITextField!
    @IBOutlet weak var IEditorial: UITextField!
    @IBOutlet weak var IngresoDeLibros: UILabel!
    @IBOutlet weak var ModificacionButton: UIButton!
    
    //Declaracion de la clase Biblioteca
    var Bibli: Biblioteca = Biblioteca()
    
    //IBAction declaration
    
    //Funcion Para Buscar el Libro
    @IBAction func BusquedaDeLibro(_ sender: UIButton) {
        ShowInformation.text = Bibli.buscar(codigo: IcodigoInsertado.text!)
    }
    
    //Eliminar todos los libros
    @IBAction func EliminarTodo(_ sender: UIButton) {
        Bibli.eliminarTodo()
    }
    //Eliminar un libro
    @IBAction func EliminarUnLibro(_ sender: UIButton) {
        Bibli.eliminarLibro(codigoEliminacion: IcodigoInsertado.text!)
    }
    
    //Modifica un libro por medio de su codigo
    @IBAction func Modificacion(_ sender: UIButton) {
        Bibli.modificacion(Titulomodificar: ITitulo.text!, CodigoModificar: IcodigoInsertado.text!, AutorModificar: IAutor.text!,
                           EditorialModificar: IEditorial.text!)
        
    }
    
    //Lista los libros en un Label
    @IBAction func IMostrarLibros(_ sender: UIButton) {
        ShowInformation.text = Bibli.impresionData()
    }
    

    //Ingreso de libro
    @IBAction func IngresarLibro(_ sender: UIButton) {

        let newBook: Libro = Libro(titulo: ITitulo.text!,codigo: ICodigo.text!
            ,autor: IAutor.text!,
             editorial: IEditorial.text!)
        IngresoDeLibros.text = Bibli.insercion(Libro: newBook)
        
        ModificacionButton.isEnabled = true
    }
    
}

