//
//  ViewController.swift
//  Alert Project
//
//  Created by Faruk Eymen Baltaci on 13.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
       
    /*
        let alert = UIAlertController(title: "Error!", message: "User not found", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            print("Button Clicked.")
        }
        alert.view.tintColor = UIColor.gray
        alert.addAction(okButton)
        self.present(alert,animated: true, completion: nil)
     */
        
        if usernameText.text == "" && passwordText.text == "" && password2Text.text == "" {
         makeAlert(titleInput: "Error!", messageInput: "Fill in the relevant fields")
        }
        
        else if usernameText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Username not found")
        }
        else if passwordText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Passwords not found")
        }
        else if password2Text.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Passwords not confirmed")
        }
        else if passwordText.text != password2Text.text {
            makeAlert(titleInput: "Error!", messageInput: "Passwords do not match")
        }
        else {
            makeAlert(titleInput: "Success", messageInput: "User logged in")
        }
        
    }
    
    func makeAlert(titleInput:String, messageInput:String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        alert.view.tintColor = UIColor.gray
        self.present(alert, animated: true)
        // self keyword' ü viewController' a referans verir.
    }
    
    
}

