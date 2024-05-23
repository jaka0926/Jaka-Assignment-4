//
//  HateViewController-solution.swift
//  SeSAC-Assignment-4
//
//  Created by Jaka on 2024-05-23.
//

import UIKit

class HateViewController_solution: UIViewController {
    
    var count = UserDefaults.standard.integer(forKey: "count")

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Hate \(#function)")
        
    }
    

    @IBAction func saveButton(_ sender: UIButton) {
        
        
        count += 1
        UserDefaults.standard.set(count, forKey: "count")
        
        
        
    }
    
}
