//
//  MyViewController.swift
//  MyUIKit
//
//  Created by Dyani on 1/22/24.
//

import UIKit

class MyViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

    }
    
    @IBAction func didTabButton(_ sender: Any) {
        
        if let name = nameTextField.text {
            helloLabel.text =  "Hello \(name)!"
        }
    }
    
}
