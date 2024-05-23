//
//  AssignmentTableViewController.swift
//  SeSAC-Assignment-4
//
//  Created by Jaka on 2024-05-23.
//

import UIKit

class AssignmentTableViewController: UITableViewController {
    
    var sec1 = ["공지사항", "실험실", "버전 정보"]
    var sec2 = ["개인/보안", "알림", "채팅", "멀티프로그램"]
    var sec3 = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "전체 설정"
        } else if section == 1 {
            return "개인 설정"
        } else if section == 2 {
            return "기타"
        } else {
            return "섹션"
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        } else if section == 1 {
            return 4
        } else if section == 2 {
            return 1
        } else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingcell")!
        if indexPath.section == 0 {
            cell.textLabel?.text = sec1[indexPath.row]
        } else if indexPath.section == 1 {
            
            cell.textLabel?.text = sec2[indexPath.row]
        } else if indexPath.section == 2 {
            
            cell.textLabel?.text = sec3[indexPath.row]
        }
        return cell
    }
}
