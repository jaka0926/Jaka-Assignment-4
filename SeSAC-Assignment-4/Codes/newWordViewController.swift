//
//  newWordViewController.swift
//  SeSAC-Assignment-4
//
//  Created by Jaka on 2024-05-20.
//

import UIKit

class newWordViewController: UIViewController {

    
    @IBOutlet var searchField: UITextField!
    @IBOutlet var searchButton: UIButton!
    @IBOutlet var bgImage: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var nextPageButton: UIButton!
    
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    
    let wordList = ["무야호": "예능 프로그램 <무한도전>에 출연했던 한 출연자에 의해 생겨난 유행어로, 매우 신난다는 뜻.", "나심비": "'나'와 '심리' 그리고 '가성비'의 합성어. 가성비보다 스스로의 만족을 위해 지갑을 여는 소비 심리를 일컫는다.", "머선129": "경상도 사투리로 '이게 무슨 일이고?'를 비슷한 발음의 숫자 129로 표현.", "존버": "'죽도로 버틴다'는 뜻으로, 장기투자를 의미. 상승과 하락에도 매도를 하지 않고 시간을 투자한다는 뜻이다.", "마상": "'마음의 상처'를 줄인 말. 아쉽거나 실망스러운 일이 있을 때 주로 쓴다."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchField.layer.borderColor = UIColor.black.cgColor
        searchField.layer.borderWidth = 2
        searchField.returnKeyType = .search
        
        searchButton.backgroundColor = .black
        searchButton.tintColor = .white
        
        bgImage.image = UIImage(named: "background")
        
        descriptionLabel.textAlignment = .center
        descriptionLabel.textColor = .black
        descriptionLabel.numberOfLines = 4
        descriptionLabel.text = ""
        
        nextPageButton.setTitle("감정 다이어리", for: .normal)
        nextPageButton.tintColor = .black
        nextPageButton.layer.borderWidth = 3
        nextPageButton.layer.borderColor = UIColor.black.cgColor
        
        button1.setTitle("무야호", for: .normal)
        button2.setTitle("나심비", for: .normal)
        button3.setTitle("머선129", for: .normal)
        button4.setTitle("존버", for: .normal)
        button5.setTitle("마상", for: .normal)
        
        configureButton(button1)
        configureButton(button2)
        configureButton(button3)
        configureButton(button4)
        configureButton(button5)
        
    }
    
    func configureButton(_ button: UIButton) {
        
        button.layer.borderColor = UIColor.black.cgColor
        button.tintColor = .black
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 15
    }
    
    
    @IBAction func quickButtonClicked(_ sender: UIButton) {
        switch sender.tag {
        case 0: descriptionLabel.text = wordList["무야호"]
        case 1: descriptionLabel.text = wordList["나심비"]
        case 2: descriptionLabel.text = wordList["머선129"]
        case 3: descriptionLabel.text = wordList["존버"]
        case 4: descriptionLabel.text = wordList["마상"]
        
        default:
            print(0)
        }
    }
    
    
    
    
    @IBAction func searchIconTapped(_ sender: UIButton) {
        searchButtonTapped(searchField)
    }
    
    @IBAction func searchButtonTapped(_ sender: UITextField) {
        
        if searchField.text == "" {
            descriptionLabel.text = "입력한 내용 없습니다"
        }
        else if (!wordList.keys.contains(searchField.text!)) {descriptionLabel.text = "검색 결과 없습니다"}
        else
        {
            descriptionLabel.text = wordList[searchField.text!]
        }
    }
    
}
