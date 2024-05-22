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
        
        let height = UserDefaults.standard.integer(forKey: "heightInfo")
        let weight = UserDefaults.standard.integer(forKey: "weightInfo")
        heightField.text = "\(height)"
        weightField.text = "\(weight)"
        
        
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
        
        let randomHeight = Int.random(in: 130...230)
        let randomWeight = Int.random(in: 30...200)
        
        heightField.text = "\(randomHeight)"
        weightField.text = "\(randomWeight)"
    }
    
    func showAlert(title: String?, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(ok)
        present(alert, animated: true)
    }

    @IBAction func resultButtonClicked(_ sender: UIButton) {
        
        var alertMsg: String?
        var result = ""
        
        guard let heightText = heightField.text, var height = Float(heightText),
              let weightText = weightField.text, var weight = Float(weightText) else {
                alertMsg = "키 및 몸무게를 입력하십시오"
                showAlert(title: alertMsg, message: result)
                return
            }
        

        if height > 230 || height < 130 || weight > 200 || weight < 30 {
            alertMsg = "내용 확인 후 다시 입력하십시오"
            
            
        }
        else
        {
            
            height = height / 100
            let BMI = weight / (height * height)
            alertMsg = "BMI 점수: \(BMI)"
            
            switch (BMI) {
            case ...18.4: result = "Underweight"
            case 18.5...24.9: result = "Normal"
            case 25.0...39.9: result = "Overweight"
            case 40.0...: result = "Obese"
            default: result = "Error"
            }
        }
        
        showAlert(title: alertMsg, message: result)
        
        UserDefaults.standard.set(heightField.text, forKey: "heightInfo")
        UserDefaults.standard.set(weightField.text, forKey: "weightInfo")
        
    }
    
}
