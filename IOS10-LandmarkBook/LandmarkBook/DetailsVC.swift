//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by Faruk Eymen Baltaci on 19.10.2022.
//

import UIKit

class DetailsVC: UIViewController {
    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    var selectedLandmarkName = ""
    var selectedLandImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandImage
        
    }

}
