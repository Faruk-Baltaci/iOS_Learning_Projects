//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Faruk Eymen Baltaci on 13.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var isBayWhite = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
        // UITapGestureRecognizer: Fare ile tek ya da çoklu tıklama yapıldığında bunu algılamayı sağlar.
    }

    @objc func changePic() {
        if isBayWhite == true {
            imageView.image = UIImage(named: "White2")
            myLabel.text = "Boss Mr. White"
            isBayWhite = false
        }
        else {
            imageView.image = UIImage(named: "White")
            myLabel.text = "Teacher Mr. White"
            isBayWhite = true
        }
            
        
    }

}

