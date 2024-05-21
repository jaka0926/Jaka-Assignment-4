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
