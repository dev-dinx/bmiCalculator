//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 신동환 on 2021/05/14.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String? // 실제 bmi의 값이 무엇일지 모르기 때문에 옵셔널을 사용
    
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiResult.text = bmiValue
    }
   
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated:true, completion: nil)
    }
}
