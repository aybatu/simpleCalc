//
//  CalculatorViewController.swift
//  simpleCalculator
//
//  Created by Aybatu KERKUKLUOGLU on 09/09/2023.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true
    
    private var displayValue: Double {
        get {
            guard let number = Double(resultLabel.text!) else {
                fatalError("Cannot convert display label text to a Double.")
            }
            return number
        }
        set {
            resultLabel.text = String(newValue)
        }
    }
    
    private var calculator = CalculatorLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        if let numValue = sender.titleLabel?.text {
            
            if(resultLabel.text!.contains(".") && numValue == ".") {
                return
            }
            if numValue == "0" && resultLabel.text == "0" {
                return
            }
            if isFinishedTypingNumber {
                if resultLabel.text == "0" && numValue == "." {
                    resultLabel.text = "0."
                    isFinishedTypingNumber = false
                    return
                }
                resultLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                
                if numValue == "." {
              
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                }
                if resultLabel.text != "0" {
                    resultLabel.text? += numValue
                } else if resultLabel.text == "0" && numValue == "." {
                    resultLabel.text = "0."
                    isFinishedTypingNumber = false
                    return
                } else {
                    resultLabel.text = numValue
                }
            }
        }
    }
    
   

    @IBAction func equalButtonTapped(_ sender: UIButton) {
        isFinishedTypingNumber = true
        
        calculator.setNumber(displayValue)
        
        if let calcMethod = sender.titleLabel?.text {
            
            if let result = calculator.calculate(symbol: calcMethod) {
                displayValue = result
            }
        }
    }
    
}



