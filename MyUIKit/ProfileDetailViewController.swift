//
//  ProfileDetailViewController.swift
//  MyUIKit
//
//  Created by Dyani on 2/6/24.
//

import UIKit

class ProfileDetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var inputText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = inputText

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
