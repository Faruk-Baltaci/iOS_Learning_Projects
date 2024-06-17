//
//  SuperMusician.swift
//  Musician Class
//
//  Created by Faruk Eymen Baltaci on 8.11.2022.
//

import Foundation

class SuperMusician : Musicians {
    
    func sing2(){
        print("enter night")
    }
    
    override func sing() {
        super.sing()
        print("call out my name")
    }
    
}
