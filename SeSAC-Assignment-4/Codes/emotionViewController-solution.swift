//
//  emotionViewController-solution.swift
//  SeSAC-Assignment-4
//
//  Created by Jaka on 2024-05-23.
//

import UIKit

class emotionViewController_solution: UIViewController {

    
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var hateButton: UIButton!
    @IBOutlet var likeLabel: UILabel!
    @IBOutlet var hateLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        print("Main \(#function)")

        guard let like = UserDefaults.standard.string(forKey: "like")
        else {
            likeLabel.text = "버튼 눌러줘"
            return
        }
        
        likeLabel.text = "좋아요 \(like)"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Main \(#function)")
        
        let hate = UserDefaults.standard.integer(forKey: "count")
        hateLabel.text = "hate \(hate)"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Main \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Main \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Main \(#function)")
    }
    
    @IBAction func likeButtonClicked(_ sender: UIButton) {
        //1. UserDefaults에 저장된 데이터 가져오기: 100
        let before = UserDefaults.standard.integer(forKey: "like")
        //2. 가져온 값에 1을 더하기: 101
        let after = before + 1
        //3. UserDefaults에 2번 값을 가시 저장히기
        UserDefaults.standard.set(after, forKey: "like")
        //4. UserDefaults에서 다시 데이터 가져오기
        let final = UserDefaults.standard.integer(forKey: "like")
        //5. 레이블에 표시하기
        likeLabel.text = "좋아요 \(final)"
    }
    
    @IBAction func hateButtonClicked(_ sender: UIButton) {
        
        
    }
    
    
}
