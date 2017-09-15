//
//  ViewController.swift
//  Cards
//
//  Created by Gema on 5/9/17.
//  Copyright © 2017 Gema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myClosure: () -> () = {}
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        myClosure =  {
            // self es necesario porque la clausura se crea e invoca un trozo de código que puede ser ejecutado cuando el elemento está siendo destruido. Para evitarlo, se queda una copia del objeto.
            //hay que tener cuidado por el tema de la memoria, y los punteros ciclicos.
            
            // aqui viewcontroller apunta a la clausura, y la clausura apunta a view controller
            self.doSomething()
        }
        myClosure()
    }

    func doSomething() {
        print("Hello")
    }

}
