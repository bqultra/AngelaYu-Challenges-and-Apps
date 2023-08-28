//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Szymek on 27/07/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let calcBmiValue = weight / pow(height, 2) //pow - potegowanie
        
        if calcBmiValue < 18.5 {
            
            bmi = BMI(value: calcBmiValue, advice: "Eat more pies!", color: .blue)
            
        } else if calcBmiValue < 24.9 {
            
            bmi = BMI(value: calcBmiValue, advice: "Fit as a fiddle!", color: .green)
            
        } else {
            
            bmi = BMI(value: calcBmiValue, advice: "Eat less pies!", color: .red)
            
        }
        
    }
    
    func getBMIValue() -> String {
        let bmiDecPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiDecPlace
    }
    
    func getAdvice() -> String {
        let fitAdvice = bmi?.advice ?? "No data!"
        return fitAdvice
    }
    
    func getColor() -> UIColor {
        let bgColor = bmi?.color ?? .purple
        return bgColor
    }
}
