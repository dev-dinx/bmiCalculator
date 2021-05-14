//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
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
        
        let bmi = weight / pow(height, 2)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", bmi) // bmivalue가 문자열 타입이기 때문에 format으로 변환
        
        self.present(secondVC, animated: true, completion: nil) // 현재 뷰에서 보여주고 싶은 화면, 애니메이션 효과 , 동작이 마치면 할 행동
         
    }
}
