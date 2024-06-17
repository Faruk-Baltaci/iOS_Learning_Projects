//
//  ViewController.swift
//  BreakingBadApp
//
//  Created by Faruk Eymen Baltaci on 4.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BreakingBadLabel: UILabel!
    @IBOutlet weak var İmageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Change(_ sender: Any) {
        İmageView.image = UIImage(named: "White2")
    }
    
}

