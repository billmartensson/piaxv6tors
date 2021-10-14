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
        
        if(siffra1 == nil)
        {
            resultLabel.text = "Siffra 1 fel"
            return
        }
        if(siffra2 == nil)
        {
            resultLabel.text = "Siffra 2 fel"
            return
        }

        
        var theresult = siffra1! + siffra2!
        
        resultLabel.text = String(theresult)
    }
    
    
    @IBAction func doMinus(_ sender: Any) {
        
        if let nummer1 = Int(number1Textfield.text!) {
            
            if let nummer2 = Int(number2Textfield.text!) {
                var theresult = nummer1 - nummer2
                
                resultLabel.text = String(theresult)
            }
        }
    }
    
    
    @IBAction func doMulti(_ sender: Any) {
        
        guard let nummer1 = Int(number1Textfield.text!) else {
            resultLabel.text = "Fel i siffra 1"
            return
        }
        guard let nummer2 = Int(number2Textfield.text!) else {
            resultLabel.text = "Fel i siffra 2"
            return
        }

        var theresult = nummer1 * nummer2
        
        resultLabel.text = String(theresult)
        
    }
    
    @IBAction func doDiv(_ sender: Any) {
        
        guard let nummer1 = Int(number1Textfield.text!) else {
            resultLabel.text = "Fel i siffra 1"
            return
        }
        guard let nummer2 = Int(number2Textfield.text!) else {
            resultLabel.text = "Fel i siffra 2"
            return
        }
        
        if(nummer2 == 0)
        {
            resultLabel.text = "Inte dela med noll"
            return
        }
        
        var theresult = Double(nummer1) / Double(nummer2)
        
        resultLabel.text = String(theresult)
        
    }
    
    
}

