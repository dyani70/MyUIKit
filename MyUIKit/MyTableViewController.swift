//
//  MyTableViewController.swift
//  MyUIKit
//
//  Created by Dyani on 1/22/24.
//

import UIKit

class MyTableViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    let cellData = ["Hello TableView!", "This is UIKit", "Welcome"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        configureTableView()
        
        
    }
    
    func configureTableView() { //함수 정의하고 위에서 호출
        myTableView.backgroundColor = .green
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
}

extension MyTableViewController: UITableViewDelegate {
    
    
}

extension MyTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = cellData[indexPath.row]
        return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    } //3번 리턴
    //함수를 정의하고 호출하지 않았는데도 실행됌
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 200
        } else {
            return 60.0
        }
    }
    
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
