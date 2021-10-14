//
//  ViewController.swift
//  piaxv6tors
//
//  Created by Bill Martensson on 2021-10-14.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var number1Textfield: UITextField!
    
    @IBOutlet weak var number2Textfield: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func doPlus(_ sender: Any) {
        
        // Gör om textfält till siffror
        let siffra1 = Int(number1Textfield.text!)
        let siffra2 = Int(number2Textfield.text!)
        
        
        
        var theresult = siffra1! + siffra2!
        
        resultLabel.text = String(theresult)
    }
    
    
    @IBAction func doMinus(_ sender: Any) {
        
        resultLabel.text = "hopp"
    }
    
    
    @IBAction func doMulti(_ sender: Any) {
        
    }
    
    @IBAction func doDiv(_ sender: Any) {
        
    }
    
    
}

