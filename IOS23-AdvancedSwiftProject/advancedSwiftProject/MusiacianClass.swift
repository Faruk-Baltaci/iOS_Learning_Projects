//
//  MusiacianClass.swift
//  advancedSwiftProject
//
//  Created by Faruk Eymen Baltaci on 9.01.2023.
//

import Foundation
    
class MusicianClass {
    
    var name:String
    var age:Int
    var ınstrument: String
    
    init(name: String, age: Int, ınstrument: String) {
        self.name = name
        self.age = age
        self.ınstrument = ınstrument
    }
    
    func happyBirthday() {
        self.age += 1
    }
}
