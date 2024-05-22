//
//  BMIViewController.swift
//  SeSAC-Assignment-4
//
//  Created by Jaka on 2024-05-21.
//

import UIKit

class BMIViewController: UIViewController {

    @IBOutlet var heightField: UITextField!
    @IBOutlet var weightField: UITextField!
    @IBOutlet var mainTitle: UILabel!
    @IBOutlet var subTitle: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var heightFieldLabel: UILabel!
    @IBOutlet var weightFieldLabel: UILabel!
    @IBOutlet var resultButton: UIButton!
    @IBOutlet var randomButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTitle.text = "BMI Calculator"
        mainTitle.font = UIFont.boldSystemFont(ofSize: 25)
        subTitle.text = "당신의 BMI 지수를 알려드릴게요"
        subTitle.numberOfLines = 2
        
        imageView.image = UIImage(named: "image")
        heightFieldLabel.text = "키가 어떻게 되시나요?"
        weightFieldLabel.text = "몸무게는 어떻게 되시나요?"
        
        configureTextField(heightField)
        configureTextField(weightField)
        
        resultButton.backgroundColor = .purple
        resultButton.layer.cornerRadius = 15
        resultButton.setTitle("결과 확인", for: .normal)
        resultButton.tintColor = .white
        
        randomButton.setTitle("랜덤으로 BMI 계산하기", for: .normal)
        randomButton.tintColor = .magenta
        
        
    }
    
    @IBAction func keyboardDismiss (_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    func configureTextField(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 15
        textField.keyboardType = .numberPad
    }
    
    
    @IBAction func randomButtonClicked(_ sender: UIButton) {
        
        let randomHeight = Int.random(in: 140...220)
        let randomWeight = Int.random(in: 40...160)
        
        heightField.text = "\(randomHeight)"
        weightField.text = "\(randomWeight)"
    }
    
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        
        let height = (Float(heightField.text!) ?? 0) / 100
        let weight = Float(weightField.text!) ?? 0
        
        let BMI: Float = weight / (height * height)
        
        var result: String
        print(BMI)
        
        switch (BMI) {
        case ...18.4: result = "Underweight"
        case 18.5...24.9: result = "Normal"
        case 25.0...39.9: result = "Overweight"
        case 40.0...: result = "Obese"
        default: result = "Error"
        }
        
        let alert = UIAlertController(title: "BMI score: \(BMI)", message: "\(result)", preferredStyle: .actionSheet)
        
        let ok = UIAlertAction(title: "OK", style: .cancel)
        
        alert.addAction(ok)
        
        present(alert, animated: true)
    }
    
}
