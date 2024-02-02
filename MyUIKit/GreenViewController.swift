//
//  GreenViewController.swift
//  MyUIKit
//
//  Created by Dyani on 2/2/24.
//

import UIKit
struct People {
    let name: String
    let age: Int
}

class GreenViewController: UIViewController {


    var friends: [People] = [
        People(name: "댜니", age: 20)
    ]
    
    @IBOutlet weak var insertNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goNext" {
            let viewController = segue.destination as! IndigoViewController
            viewController.inputName = insertNameTextField.text!
            viewController.friends = friends
        }
    }

}
