import UIKit

struct CalculaterBrain {
    
    var bmi : BMI?
    
    func getBMIValue() -> String {
       
        /* if getBMIValue != nil {
         let getDecimalValue = String(format: "%.1f", bmi!)
         return getDecimalValue
         }
         return "0.0"
         }
         */
        
        let getDecimalValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return getDecimalValue
    }
    mutating func calculateBMI(weight : Float, height : Float) {
       
        let bmiValue = weight / (height * height)
    
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue , advice: "Eat more pizza", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
            
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat more pizza" , color: #colorLiteral(red: 1, green: 0.1733154553, blue: 0.7508693561, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat more pizza" , color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "no advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
