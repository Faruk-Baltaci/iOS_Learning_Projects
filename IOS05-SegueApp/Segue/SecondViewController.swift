//
//  SecondViewController.swift
//  Segue
//
//  Created by Faruk Eymen Baltaci on 12.10.2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var myLabelSecond: UILabel!
    
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
    
        
    }
    

}
