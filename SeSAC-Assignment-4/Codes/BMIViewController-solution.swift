//
//  BMIViewController-solution.swift
//  SeSAC-Assignment-4
//
//  Created by Jaka on 2024-05-22.
//

import UIKit

class BMIViewController_solution: UIViewController {

    
    @IBOutlet var heightTextField: UITextField!
    @IBOutlet var weightTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func checkButtonController() {
        // height의 범위기 제한적
        if let height = heightTextField.text,
           let weight = weightTextField.text {
            let result = "키 \(height), 몸무게 \(weight)"
            
            //guard
            //2. 변수 활용 범위
            //3. early exit
            guard let height = heightTextField.text,
                  let weight = weightTextField.text
            else {
                resultLabel.text = "nil입니다"
                return
                
            }
            resultLabel.text = "키: \(height)"
        }
    }
    
}
