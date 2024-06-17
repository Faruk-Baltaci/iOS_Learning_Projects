//
//  DetailVC.swift
//  BreakingBadBook
//
//  Created by Faruk Eymen Baltaci on 8.11.2022.
//

import UIKit

class DetailVC: UIViewController {
   
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var storyLabel: UILabel!
    
    var selectedBrakingBad : BreakingBad?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        nameLabel.text = selectedBrakingBad?.name
        jobLabel.text = selectedBrakingBad?.job
        storyLabel.text = selectedBrakingBad?.story
        imageView.image = selectedBrakingBad?.image
        
    }
    

}
