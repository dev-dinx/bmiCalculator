//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var calculaterBrain = CalculaterBrain()
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!

    
    @IBAction func heightSlider(_ sender: UISlider) {
        let currentHeightValue = String(format: "%.2f", sender.value)
        heightLabel.text = "\(currentHeightValue)m"
       // heightLabel.text = String(format: "%.2f", sender.value) 단위 표시가 안됨
    }
    @IBAction func weigtSlider(_ sender: UISlider) {
        let currentWeightValue = String(format: "%.0f", sender.value)
        weightLabel.text = "\(currentWeightValue)kg"
    }
    
    @IBAction func calculatorButton(_ sender: UIButton) {
        let height = heightSliderOutlet.value
        let weight = weightSliderOutlet.value
        
        calculaterBrain.calculateBMI(weight: weight, height: height)
        
        
        performSegue(withIdentifier: "goToResult", sender: self) // segue를 실행한다. segue의 식별자 , 보내는 사람
         
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" { // segue와 철자가 다를 시 충돌이 일어나는 것을 방지
            let destinationVC = segue.destination as! ResultViewController // segue의 대상이 실제로 ResultViewController 임을 설정
            destinationVC.bmiValue = calculaterBrain.getBMIValue()
        }
        
    }
}
