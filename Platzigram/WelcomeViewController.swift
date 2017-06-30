//
//  WelcomeViewController.swift
//  Platzigram
//
//  Created by Rodrigo salvador Hernandez Menjivar on 28/6/17.
//  Copyright © 2017 Rodrigo salvador Hernandez Menjivar. All rights reserved.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {
    
    var etiquetaBienvenida : UILabel?
    var imagenBienvenida : UIImageView?
    var botonLogin : UIButton?
    var botonSignup : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if etiquetaBienvenida == nil {
            etiquetaBienvenida = UILabel()
            etiquetaBienvenida?.text = "Bienvenido a Platzigram"
            etiquetaBienvenida?.font = UIFont.systemFont(ofSize: 17)
            etiquetaBienvenida?.textColor = UIColor.orange
            etiquetaBienvenida?.sizeToFit()
            etiquetaBienvenida?.frame = CGRect(x: 0, y: 40, width: etiquetaBienvenida!.frame.size.width, height: etiquetaBienvenida!.frame.size.height)
            etiquetaBienvenida?.center = CGPoint(x: self.view.frame.width / 2, y: etiquetaBienvenida!.center.y)
            self.view.addSubview(etiquetaBienvenida!)
        }
        if botonSignup == nil {
            botonSignup = UIButton(type: .custom)
            botonSignup?.setTitle("SignUp", for: .normal)
            botonSignup?.setTitleColor(UIColor.red, for: .normal)
            botonSignup?.sizeToFit()
            botonSignup?.frame = CGRect(x: 20, y: self.view.frame.size.height - 40, width: self.view.frame.size.width - 40, height: 20)
            botonSignup?.addTarget(self, action: #selector(apretoBtn(sender:)), for: .touchUpInside)
            self.view.addSubview(botonSignup!)
        }
        if botonLogin == nil {
            botonLogin = UIButton(type: .custom)
            botonLogin?.setTitle("Login", for: .normal)
            botonLogin?.setTitleColor(UIColor.red, for: .normal)
            botonLogin?.sizeToFit()
            botonLogin?.frame = CGRect(x: 20, y: self.view.frame.height - 80, width: self.view.frame.width - 40, height: 20)
            self.view.addSubview(botonLogin!)
            botonLogin?.addTarget(self, action: #selector(apretoBtn(sender:)), for: .touchUpInside)
            
        }
        if imagenBienvenida == nil {
            imagenBienvenida = UIImageView(image: UIImage(named: "image.png"))
            imagenBienvenida?.frame = CGRect(x: 10, y: etiquetaBienvenida!.frame.maxY + 80, width: self.view.frame.size.width, height: 150)
            imagenBienvenida?.contentMode = .scaleAspectFit
            self.view.addSubview(imagenBienvenida!)
        }
    }
    
    func apretoBtn(sender : UIButton){
        print("presiono \(sender.title(for: .normal)!)")
        
        let mensajeAlerta = UIAlertController(title: "sin Cuenta", message: "Por el momento no tienes una cuenta", preferredStyle: .alert)
        
        let crearCuenta = UIAlertAction(title: "Crear Cuenta", style: .default, handler: {
            actionCrearCuenta in
            print("Presiono Crear Cuenta")
        })
        
        let cancelarMen = UIAlertAction(title: "Cancelar", style: .cancel, handler: {
            accionCancelar in
            print("Presiono Cancelar")
            
        })
        
        mensajeAlerta.addAction(cancelarMen)
        mensajeAlerta.addAction(crearCuenta)
        
        self.present(mensajeAlerta, animated: true, completion: nil)
    }
    
}
