//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Faruk Eymen Baltaci on 5.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TextFieldNum1: UITextField!
    @IBOutlet weak var TextFieldNum2: UITextField!
    @IBOutlet weak var Result: UILabel!
    
    var result:Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func ButtonSum(_ sender: Any) {
        //        Bu kullanımda Kullanıcı string bir ifade girerse program çöker
        //        let firstNumber = Int(TextFieldNum1.text!)!
        //        let secondNumber = Int(TextFieldNum2.text!)!
        
        if let firstNumber = Float(TextFieldNum1.text!) {
            if let secondNumber = Float(TextFieldNum2.text!){
                result = firstNumber + secondNumber
                Result.text = String(result)
            }
        }
        
        
        
    }
    
    @IBAction func ButtonSubstract(_ sender: Any) {
        if let firstNumber = Float(TextFieldNum1.text!) {
            if let secondNumber = Float(TextFieldNum2.text!){
                result = firstNumber - secondNumber
                Result.text = String(result)
            }
        }
        
    }
    
    @IBAction func ButtonDivide(_ sender: Any) {
        if let firstNumber = Float(TextFieldNum1.text!) {
            if let secondNumber = Float(TextFieldNum2.text!){
                result = firstNumber / secondNumber
                Result.text = String(result)
            }
        }
    }
    
    @IBAction func ButtonDuplicate(_ sender: Any) {
        if let firstNumber = Float(TextFieldNum1.text!) {
            if let secondNumber = Float(TextFieldNum2.text!){
                result = firstNumber * secondNumber
                Result.text = String(result)
            }
        }
        
    }
    
}

