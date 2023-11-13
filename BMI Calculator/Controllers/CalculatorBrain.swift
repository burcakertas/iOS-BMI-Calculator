//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by BURCAKER on 12.11.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    var adviceText: String?
    var backroundColor: UIColor?
    var bmi: Float?
    
    mutating func calculateBMI(heightValue: Float, weightValue: Float ) {
       bmi = weightValue / pow(heightValue, 2)
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi ?? 0.0)
        return bmiValue
    }
    
    func getBackgorundColorAndAdviceText(bmiValue: String) -> (UIColor, String) {
        let bmiInt = (bmiValue as NSString).floatValue
        
        if bmiInt ?? 0 >= 25.0 {
            return (.red, "Eat more healthy")
        } else if (bmiInt ?? 0 >= 18.5 && bmiInt ?? 0 <= 24.9) {
            return (.green, "Keep going on")
        } else {
            return (.systemPink, "Eat more hamburgers (:")
        }
    }
    
}
