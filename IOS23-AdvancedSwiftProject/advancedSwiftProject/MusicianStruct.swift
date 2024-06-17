//
//  MusicianStruct.swift
//  advancedSwiftProject
//
//  Created by Faruk Eymen Baltaci on 9.01.2023.
//

import Foundation

struct MusicianStruct {
      
    var name: String
    var age: Int
    var ınstrument: String
    
    mutating func happyBirthday(){
        self.age += 1
    }
}
