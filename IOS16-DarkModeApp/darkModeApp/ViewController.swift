//
//  ViewController.swift
//  darkModeApp
//
//  Created by Faruk Eymen Baltaci on 18.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeButton: UIButton!
   
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Kullanıcı ne yaparsa yapsın bu sayfa her zaman light modda çalışır.
        //overrideUserInterfaceStyle = .light
        
        
        let userInterface = traitCollection.userInterfaceStyle
        
        if userInterface == .dark {
            changeButton.tintColor = UIColor.white
        } else {
            changeButton.tintColor = UIColor.blue
        }
        
        
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userInterface = traitCollection.userInterfaceStyle
        
        if userInterface == .dark {
            changeButton.tintColor = UIColor.white
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }
    
  
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
      
        //viewWill Appear ve ViewController' ı dark modu kapatıp veya açtığımız zaman değişimi anlık olarak değil de gecikmeli veya emülatörü yeniden çalıştırarak yaptırdığı için traitCollectionDidChange' i kullandık.
        
        let userInterface = traitCollection.userInterfaceStyle
        
        if userInterface == .dark {
            changeButton.tintColor = UIColor.white
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }
    
}

