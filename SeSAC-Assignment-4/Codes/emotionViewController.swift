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
        label.text = labelArr[label.tag]
    }
    
    @IBAction func Image1clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label1.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
    }
    
    @IBAction func Image2clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label2.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
    }
    @IBAction func Image3clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label3.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
    }
    @IBAction func Image4clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label4.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
    }
    @IBAction func Image5clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label5.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
    }
    @IBAction func Image6clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label6.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
    }
    @IBAction func Image7clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label7.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
    }
    @IBAction func Image8clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label8.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
    }
    @IBAction func Image9clicked(_ sender: UIButton) {
        labelNum[sender.tag] += 1
        label9.text = labelArr[sender.tag] + " \(labelNum[sender.tag])"
    }
}
