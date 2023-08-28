//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipValue = 0.0
    var amountToPay = 0.0
    var numberOfPeople = 2
    var payment = 0.0

    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let btnTitle = sender.currentTitle!
        
        let btnTitleWithoutSign = String(btnTitle.dropLast())
        
        let btnValue = Double(btnTitleWithoutSign)!
        
        tipValue = btnValue / 100
        
        billTextField.endEditing(true)
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    
        let money = billTextField.text!
        
        if money != "" {
         
            amountToPay = Double(money)!
            
            payment = amountToPay * (1 + tipValue) / Double(numberOfPeople)
            
            let twoDecPlaces = String(format: "%.2f", payment)
            
            print(twoDecPlaces)
            
            self.performSegue(withIdentifier: "goToResult", sender: self) 
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "goToResult" {
                let destinationVC = segue.destination as! ResultsViewController
                destinationVC.tipPercentage = Int(tipValue*100)
                destinationVC.personMoney = payment
                destinationVC.people = numberOfPeople
            }
        }
}

