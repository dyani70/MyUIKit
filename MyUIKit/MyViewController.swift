//
//  MyViewController.swift
//  MyUIKit
//
//  Created by Dyani on 1/22/24.
//

import UIKit

protocol AdminDelegate {    // 2. 위임되면 해야하는 거
    func doTask()
}

class MyViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    var admin: Admin?   //3. 관리자 만듬
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        admin = Admin(delegate: self)   //4. 위임을 self(MyViewController)에게 함

    }
    
    @IBAction func didTabButton(_ sender: Any) {
        
        if let name = nameTextField.text {
            helloLabel.text =  "Hello \(name)!"
        }
        admin?.delegate.doTask()
    }
    
}


extension MyViewController: AdminDelegate { //  5.MyViewController가 위임을 받으면 할것들 정의
    func doTask() {
        print("저 지금 일 잘하고 있습니다")
    }
}



struct Admin {  //1. 위임을 하는 사람
    var delegate: AdminDelegate //위임할 준비가 되어있음. 위임을 받는다면 AdminDelegate를 해야함
}
