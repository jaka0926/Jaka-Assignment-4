//
//  SimpleTableTableViewController.swift
//  SeSAC-Assignment-4
//
//  Created by Jaka on 2024-05-23.
//

import UIKit

class SimpleTableTableViewController: UITableViewController {

    var list = ["iOS", "iPadOS", "watchOS", "macOS", "기타"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    //1. 셀의 갯수(필수)\
    //ex. 카카오톡 100명
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return list.count
    }
    
    //2. 셀의 높이(약간 필수 권장...)
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //print(#function)
        return 80
    }
    
    //3. 셀의 디자인 및 데이터 처리
    //ex. 카카오톡 친수 이름. 프로필 사진. 상태 메시지 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(#function, indexPath)
        //3-1. 어떤 셀을 쓸 지 결정
        //재사용 메커니즘
        let cell = tableView.dequeueReusableCell(withIdentifier: "jackCell")!
        
        cell.imageView?.image = UIImage(systemName: "star.fill")
        cell.imageView?.tintColor = .red
        
        
        
        cell.textLabel?.text = list[indexPath.row]
        cell.textLabel?.font = .boldSystemFont(ofSize: 30)
        
        cell.detailTextLabel?.text = "Winter is Coming"
        cell.detailTextLabel?.textColor = .lightGray
        cell.detailTextLabel?.font = .systemFont(ofSize: 20)
        
        return cell
    }
    
}
