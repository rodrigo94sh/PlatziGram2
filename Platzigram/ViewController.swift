//
//  ViewController.swift
//  Platzigram
//
//  Created by Rodrigo salvador Hernandez Menjivar on 27/6/17.
//  Copyright © 2017 Rodrigo salvador Hernandez Menjivar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiquetaHolaMundo: UILabel!
    
    
    @IBOutlet weak var greenBtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    @IBOutlet weak var blueBtn: UIButton!
    
    @IBOutlet weak var diesBtn: UIButton!
    @IBOutlet weak var quinceBtn: UIButton!
    @IBOutlet weak var veinteBtn: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func presionoBtn(_ sender: UIButton) {
        if (sender.isEqual(greenBtn)){
            self.etiquetaHolaMundo.textColor = UIColor.green
        }
        else if (sender.isEqual(blueBtn)){
            self.etiquetaHolaMundo.textColor = UIColor.blue
        }
        else if (sender.isEqual(orangeBtn)){
            self.etiquetaHolaMundo.textColor = UIColor.orange
        }
    }
    
    
    @IBAction func tamanoBtn(_ sender: UIButton) {
        if (sender.isEqual(diesBtn)){
            etiquetaHolaMundo.font = UIFont.systemFont(ofSize: 10)
        }
        else if (sender.isEqual(quinceBtn)){
            etiquetaHolaMundo.font = UIFont.systemFont(ofSize: 15)
        }
        else if (sender.isEqual(veinteBtn)){
            etiquetaHolaMundo.font = UIFont.systemFont(ofSize: 20)
        }
    }
    

}

