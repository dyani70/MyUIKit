//
//  IndigoViewController.swift
//  MyUIKit
//
//  Created by Dyani on 2/2/24.
//

import UIKit

class IndigoViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    var inputName: String = "" // 받아줄 변수
    var friends: [People] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        name.text = inputName //화면이 그려지고 나서 그려야함
        name.text = friends.first?.name
        


    }
    


}
