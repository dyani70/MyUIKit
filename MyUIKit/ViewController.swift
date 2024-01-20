//
//  ViewController.swift
//  MyUIKit
//
//  Created by Dyani on 1/19/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green  // view를 조정
        // Do any additional setup after loading the view.
    }

    @IBAction func didMyButtonTapped(_ sender: Any) {
        print("Hello leeo!!!")
    }
    
}

