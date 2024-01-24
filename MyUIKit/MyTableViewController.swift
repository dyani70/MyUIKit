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
    
    func configureTableView() {
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
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    
}
