//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sumit Mandal on 29/04/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(bmiValue: bmiValue, bmiAdvice: "Eat more pies.", bmiColour: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(bmiValue: bmiValue, bmiAdvice: "You are perfect.", bmiColour: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(bmiValue: bmiValue, bmiAdvice: "You need to work out.", bmiColour: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }
    }
    
    func getBMIvalue() -> String {
        return String(format: "%.1f", bmi?.bmiValue ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.bmiAdvice ?? "Result not calculated."
    }
    
    func getColor() -> UIColor {
        return bmi?.bmiColour ?? .gray
    }
}
