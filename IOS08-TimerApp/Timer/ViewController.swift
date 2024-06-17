//
//  ViewController.swift
//  Timer
//
//  Created by Faruk Eymen Baltaci on 15.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    var timer = Timer()
    var counter = 0
    
    //Timer belirli bir zaman geçtikten sonra belirlenen target objesine bir mesaj yollamaya yarar. Aynı zamanda threading yapmayada yarar.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timeLabel.text = "Time: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
       //selector fonksiyon bağlayabilmemizi yarar.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        print("Button Clicked")
    }
    
    @objc func timerFunction() {
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time's Over"
        }
    }
  
}

