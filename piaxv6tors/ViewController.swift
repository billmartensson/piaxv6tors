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
        
        doCalc(calctype: "plus")
    }
    
    
    @IBAction func doMinus(_ sender: Any) {
        
        doCalc(calctype: "minus")
    }
    
    
    @IBAction func doMulti(_ sender: Any) {
        
        doCalc(calctype: "mult")
        
    }
    
    @IBAction func doDiv(_ sender: Any) {
        
        doCalc(calctype: "div")
        
    }
    
    
    func doCalc(calctype : String) {
        guard let nummer1 = Double(number1Textfield.text!) else {
            resultLabel.text = "Fel i siffra 1"
            return
        }
        guard let nummer2 = Double(number2Textfield.text!) else {
            resultLabel.text = "Fel i siffra 2"
            return
        }
        
        
        
        
        var theresult = 0.0
        
        if(calctype == "plus")
        {
            theresult = Double(nummer1) + Double(nummer2)

        }
        if(calctype == "minus")
        {
            theresult = Double(nummer1) - Double(nummer2)

        }
        if(calctype == "mult")
        {
            theresult = Double(nummer1) * Double(nummer2)

        }
        if(calctype == "div")
        {
            if(nummer2 == 0)
            {
                resultLabel.text = "Inte dela med noll"
                return
            }
            
            theresult = Double(nummer1) / Double(nummer2)

        }

        /*
         
         1 / 3 = 0.3333333333
         gånger 1000: 333.33333
         avrunda: 333
         dela med 1000: 0.333
         
         */
        
        
        theresult = round(theresult * 1000) / 1000
        
        
        
        resultLabel.text = String(theresult)
    }
    
    
    @IBAction func resetResult(_ sender: Any) {
        resultLabel.text = "RESULTAT"
    }
    
    
    
}


/*
 
 
 @IBAction func doPlus(_ sender: Any) {
     
     // Gör om textfält till siffror
     let siffra1 = Double(number1Textfield.text!.replacingOccurrences(of: ",", with: "."))
     let siffra2 = Double(number2Textfield.text!.replacingOccurrences(of: ",", with: "."))
     
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
     
     if let nummer1 = Double(number1Textfield.text!) {
         
         if let nummer2 = Double(number2Textfield.text!) {
             var theresult = nummer1 - nummer2
             
             resultLabel.text = String(theresult)
         }
     }
 }
 
 
 @IBAction func doMulti(_ sender: Any) {
     
     guard let nummer1 = Double(number1Textfield.text!) else {
         resultLabel.text = "Fel i siffra 1"
         return
     }
     guard let nummer2 = Double(number2Textfield.text!) else {
         resultLabel.text = "Fel i siffra 2"
         return
     }

     var theresult = nummer1 * nummer2
     
     resultLabel.text = String(theresult)
     
 }
 
 @IBAction func doDiv(_ sender: Any) {
     
     guard let nummer1 = Double(number1Textfield.text!) else {
         resultLabel.text = "Fel i siffra 1"
         return
     }
     guard let nummer2 = Double(number2Textfield.text!) else {
         resultLabel.text = "Fel i siffra 2"
         return
     }
     
     if(nummer2 == 0)
     {
         resultLabel.text = "Inte dela med noll"
         return
     }
     
     
     
     var theresult = Double(nummer1) / Double(nummer2)
     
     /*
      
      1 / 3 = 0.3333333333
      gånger 1000: 333.33333
      avrunda: 333
      dela med 1000: 0.333
      
      */
     
     
     theresult = round(theresult * 100) / 100
     
     
     
     resultLabel.text = String(theresult)
     
 }
 
 
 
 
 */



