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
    
    
    var labelNum = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var labelArr = ["행복해", "사랑해", "좋아해", "당황헤", "속상해", "우울해", "심심해", "불안해", "슬퍼해"]

    
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
        
        deleteButtonTitle(image1)
        deleteButtonTitle(image2)
        deleteButtonTitle(image3)
        deleteButtonTitle(image4)
        deleteButtonTitle(image5)
        deleteButtonTitle(image6)
        deleteButtonTitle(image7)
        deleteButtonTitle(image8)
        deleteButtonTitle(image9)
        
        setLabelprops(label1)
        setLabelprops(label2)
        setLabelprops(label3)
        setLabelprops(label4)
        setLabelprops(label5)
        setLabelprops(label6)
        setLabelprops(label7)
        setLabelprops(label8)
        setLabelprops(label9)
        
        
    }
    
    
    
    
    func deleteButtonTitle(_ image: UIButton) {
        image.setTitle("", for: .normal)
    }
    
    func setLabelprops(_ label: UILabel) {
        label.textAlignment = .center
        label.textColor = .white
        label.text = labelArr[label.tag] + " \(labelNum[label.tag])"
    }
    
    @IBAction func Image1clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label1.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
        UserDefaults.standard.set(labelNum[sender.tag], forKey: "label1")
    }
    
    @IBAction func Image2clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label2.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
        UserDefaults.standard.set(labelNum[sender.tag], forKey: "label2")
    }
    @IBAction func Image3clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label3.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
        UserDefaults.standard.set(labelNum[sender.tag], forKey: "label3")
    }
    @IBAction func Image4clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label4.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
        UserDefaults.standard.set(labelNum[sender.tag], forKey: "label4")
    }
    @IBAction func Image5clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label5.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
        UserDefaults.standard.set(labelNum[sender.tag], forKey: "label5")
    }
    @IBAction func Image6clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label6.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
        UserDefaults.standard.set(labelNum[sender.tag], forKey: "label6")
    }
    @IBAction func Image7clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label7.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
        UserDefaults.standard.set(labelNum[sender.tag], forKey: "label7")
    }
    @IBAction func Image8clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label8.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
        UserDefaults.standard.set(labelNum[sender.tag], forKey: "label8")
    }
    @IBAction func Image9clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label9.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
        UserDefaults.standard.set(labelNum[sender.tag], forKey: "label9")
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        labelNum = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        setLabelprops(label1)
        setLabelprops(label2)
        setLabelprops(label3)
        setLabelprops(label4)
        setLabelprops(label5)
        setLabelprops(label6)
        setLabelprops(label7)
        setLabelprops(label8)
        setLabelprops(label9)
    }
}
