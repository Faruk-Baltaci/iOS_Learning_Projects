//
//  Musicians.swift
//  Musician Class
//
//  Created by Faruk Eymen Baltaci on 8.11.2022.
//

import Foundation
 
class Musicians {
    
    //Büyük projelerde her developer' ın kullanılan her değişken için aynı değeri vermesi için kullanılır.
    //Örneğin bir developer Vocalist değişkeni yerine Vocal değişkeni yazabilir ve bu projede bir standart sağlanamamasına neden olur.
    
    enum MusicianType {
        case LeadGuitar
        case Vocalist
        case Drummer
        case Bassist
        case Violenist
    }
    
    //Properties
    var name:String
    var age:Int
    var instrument:String
    var type:MusicianType
    
    //Initializer (Constructor)
    init(nameInit:String, ageInit:Int, instrumentInit:String, typeInit:MusicianType){
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        type = typeInit
        
    }
    
    func sing(){
        print("Without Me")
    }
    
    private func test(){
        print("test")
    }
    
    
}


