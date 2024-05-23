//
//  emotionViewController.swift
//  SeSAC-Assignment-4
//
//  Created by Jaka on 2024-05-20.
//

import UIKit

class emotionViewController: UIViewController {

    
    @IBOutlet var image1: UIButton!
    @IBOutlet var image2: UIButton!
    @IBOutlet var image3: UIButton!
    @IBOutlet var image4: UIButton!
    @IBOutlet var image5: UIButton!
    @IBOutlet var image6: UIButton!
    @IBOutlet var image7: UIButton!
    @IBOutlet var image8: UIButton!
    @IBOutlet var image9: UIButton!
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!
    @IBOutlet var label8: UILabel!
    @IBOutlet var label9: UILabel!
    
    @IBOutlet var resetButton: UIButton!
    
    var labelNum = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var labelArr = ["행복해", "사랑해", "좋아해", "당황헤", "속상해", "우울해", "심심해", "불안해", "슬퍼해"]
    
    var imageArr = ["slime1", "slime2", "slime3", "slime4", "slime5", "slime6", "slime7", "slime8", "slime9"]
    
    let saveList = ["label1", "label2", "label3", "label4", "label5", "label6", "label7", "label8", "label9"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        let saved1 = UserDefaults.standard.integer(forKey: "label1")
        let saved2 = UserDefaults.standard.integer(forKey: "label2")
        let saved3 = UserDefaults.standard.integer(forKey: "label3")
        let saved4 = UserDefaults.standard.integer(forKey: "label4")
        let saved5 = UserDefaults.standard.integer(forKey: "label5")
        let saved6 = UserDefaults.standard.integer(forKey: "label6")
        let saved7 = UserDefaults.standard.integer(forKey: "label7")
        let saved8 = UserDefaults.standard.integer(forKey: "label8")
        let saved9 = UserDefaults.standard.integer(forKey: "label9")
        
        
        labelNum[0] = saved1
        labelNum[1] = saved2
        labelNum[2] = saved3
        labelNum[3] = saved4
        labelNum[4] = saved5
        labelNum[5] = saved6
        labelNum[6] = saved7
        labelNum[7] = saved8
        labelNum[8] = saved9
        
        imageConfig()
        labelConfig()
        
        
        
        resetButton.setTitle("Reset", for: .normal)
        resetButton.setTitleColor(.white, for: .normal)
    }
    
    func imageConfig() {
        
        let temp = [image1, image2, image3, image4, image5, image6, image7, image8, image9]
        
        for li in temp {
            li!.setImage(UIImage(named: imageArr[li!.tag]), for: .normal)
            
        }
    }
    
    func labelConfig() {
        let list = [label1, label2, label3, label4, label5, label6, label7, label8, label9]
        for li in list {
            li!.textAlignment = .center
            li!.textColor = .white
            li!.text = labelArr[li!.tag] + " \(labelNum[li!.tag])"}
    }
    
    @IBAction func ImageButtonClicked(_ sender: UIButton) {
        
        let list = [label1, label2, label3, label4, label5, label6, label7, label8, label9]
        
        labelNum[sender.tag] += 1
        list[sender.tag]!.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
        UserDefaults.standard.set(labelNum[sender.tag], forKey: saveList[sender.tag])
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        
        labelNum = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        labelConfig()
        
        for element in saveList {
            UserDefaults.standard.setValue(0, forKey: element)
            print(element)
        }
    }
}
