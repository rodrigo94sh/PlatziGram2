//
//  RegisterViewController.swift
//  Platzigram
//
//  Created by Rodrigo salvador Hernandez Menjivar on 28/6/17.
//  Copyright © 2017 Rodrigo salvador Hernandez Menjivar. All rights reserved.
//

import Foundation
import UIKit

class RegisterViewController: UITableViewController {
    
    
    @IBOutlet weak var usuarioTxt: UITextField!
    @IBOutlet weak var nombreTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var contrasenaTxt: UITextField!
    @IBOutlet weak var signupBtn: UIButton!
    
    var username : String?
    var user :String?
    var email : String?
    var password : String?
    
    
    @IBAction func signupBtnPressed(_ sender: UIButton) {
        
    }
    
    
    @IBAction func TextFieldValueChanged(_ sender: UITextField) {
        
        if (sender.isEqual(usuarioTxt)){
            user = usuarioTxt.text
        }
        else if (sender.isEqual(nombreTxt)){
            username = nombreTxt.text
        }
        else if (sender.isEqual(contrasenaTxt)){
            password = contrasenaTxt.text
        }
        else if (sender.isEqual(emailTxt)){
            email = emailTxt.text
        }
        
        if let userOptional = user, let usernameOptional = username, let emailOptional = email, let passwordOptional = password, !userOptional.isEmpty && !usernameOptional.isEmpty && !passwordOptional.isEmpty && !emailOptional.isEmpty {
            
            self.signupBtn.isEnabled = true
            
        }
        else {
            self.signupBtn.isEnabled = false
        }
        
    }

    
}
