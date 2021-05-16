//
//  CalculaterBrain.swift
//  BMI Calculator
//
//  Created by 신동환 on 2021/05/16.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

struct CalculaterBrain {
   
    var bmi : Float = 0.0
    
    func getBMIValue() -> String {
        let getDecimalValue = String(format: "%.1f", bmi)
        return getDecimalValue
    }
    
    mutating func calculateBMI(weight : Float, height : Float) {
        bmi = weight / (height * height)
        
    }
}
