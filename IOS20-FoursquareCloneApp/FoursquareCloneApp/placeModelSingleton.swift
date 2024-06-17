//
//  placeModelSingleton.swift
//  FoursquareCloneApp
//
//  Created by Faruk Eymen Baltaci on 1.12.2022.
//

import Foundation
import UIKit

class PlaceModel {
    
    static let sharedInstance = PlaceModel()
    
    var placeName = ""
    var placeType = ""
    var placeAtmosphere = ""
    var placeImage = UIImage()
    var placeLatitude = ""
    var placeLongitude = ""
    
    
    private init(){
        
    }
    
    
}
