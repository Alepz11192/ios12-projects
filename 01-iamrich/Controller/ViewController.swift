//
//  ViewController.swift
//  01-iamrich
//
//  Created by Alex Herrera on 1/6/19.
//  Copyright © 2019 Alex Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //Propiedades
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageDiamond: UIImageView!
    
    @IBOutlet weak var buttonPress: UIButton!
    
    
    //Metodos
    @IBAction func buttonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "Que onda", message: "<3", preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            print("He pulsado el boton de Aceptar")
        }
        controller.addAction(action)
        
        let actionTwo = UIAlertAction(title: "Borrar", style: .destructive, handler:{ (action) in
            print("He pulsado el boton Borrar")
        })
        controller.addAction(actionTwo)
        
        let actionThree = UIAlertAction(title: "Cancelar", style: .cancel){ _ in
            print("He pulsado el boton Cancelar")
        }
        controller.addAction(actionThree)

        self.show(controller, sender: nil)
    }
}
