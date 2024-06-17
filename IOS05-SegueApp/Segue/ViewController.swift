//
//  ViewController.swift
//  Segue
//
//  Created by Faruk Eymen Baltaci on 12.10.2022.
//

import UIKit

class ViewController: UIViewController {
    var userName = ""
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
        
    }
    
    
}

