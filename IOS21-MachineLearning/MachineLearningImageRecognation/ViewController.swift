//
//  ViewController.swift
//  MachineLearningImageRecognation
//
//  Created by Faruk Eymen Baltaci on 2.12.2022.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textlabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var chosenImage = CIImage()

    override func viewDidLoad() {
        super.viewDidLoad()

        textlabel.layer.masksToBounds = false
        textlabel.layer.shadowRadius = 10
        textlabel.layer.shadowOpacity = 1.0
        textlabel.layer.shadowOffset = CGSize(width: 3, height: 3)
        textlabel.layer.shadowColor = UIColor.black.cgColor
        
    }

    @IBAction func changeClicked(_ sender: Any) {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
        
        if let ciImage = CIImage(image: imageView.image!) {
            chosenImage = ciImage
            
        }
        
        recognizeImage(image: chosenImage)
    }
    
    func recognizeImage(image: CIImage) {
        
        // 1) Request
        // 2) Handler
                
                resultLabel.text = "Finding ..."
                
                if let model = try? VNCoreMLModel(for: MobileNetV2().model) {
                    let request = VNCoreMLRequest(model: model) { (vnrequest, error) in
                        
                        if let results = vnrequest.results as? [VNClassificationObservation] {
                            if results.count > 0 {
                                
                                let topResult = results.first
                                
                                DispatchQueue.main.async {
                                    //
                                    let confidenceLevel = (topResult?.confidence ?? 0) * 100
                                    
                                    let rounded = Int (confidenceLevel * 100) / 100
                                    
                                    self.resultLabel.text = "\(rounded)% it's \(topResult!.identifier)"
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                    let handler = VNImageRequestHandler(ciImage: image)
                          DispatchQueue.global(qos: .userInteractive).async {
                            do {
                            try handler.perform([request])
                            } catch {
                                print("error")
                            }
                    }
                    
                    
                }
        
        
    }
    
}

