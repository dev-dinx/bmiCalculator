//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by 신동환 on 2021/05/14.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0" // 임의로 값을 설정
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue //
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50) // 라벨의 크기를 정사각형으로 설정
        
        view.addSubview(label) // 뷰 안에 보여주고싶은 뷰 추가
    }
}
