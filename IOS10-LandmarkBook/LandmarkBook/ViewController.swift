//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Faruk Eymen Baltaci on 19.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var tableView: UITableView!
    var landmarksNames = [String]()
    var landmarksImages = [UIImage]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImages = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landmarksNames.append("1- Türkiye")
        landmarksNames.append("2- Brezilya")
        landmarksNames.append("3- Dubai")
        landmarksNames.append("4- İtalya")
        landmarksNames.append("5- İngiltere")
        landmarksNames.append("6- USA")
        landmarksNames.append("7- Rusya")
        landmarksNames.append("8- Avustralya")
        landmarksNames.append("9- İsveç")
        landmarksNames.append("10- Hindistan")
        
        
        landmarksImages.append(UIImage(named: "ayasofya")!)
        landmarksImages.append(UIImage(named: "brezilya")!)
        landmarksImages.append(UIImage(named: "BurjHalife")!)
        landmarksImages.append(UIImage(named: "kolezyum")!)
        landmarksImages.append(UIImage(named: "londra")!)
        landmarksImages.append(UIImage(named: "newyork")!)
        landmarksImages.append(UIImage(named: "rusya")!)
        landmarksImages.append(UIImage(named: "sidney")!)
        landmarksImages.append(UIImage(named: "stockholm")!)
        landmarksImages.append(UIImage(named: "tacMahal")!)
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarksNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "text"
        var content = cell.defaultContentConfiguration()
        content.text = landmarksNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenLandmarkName = landmarksNames[indexPath.row]
        chosenLandmarkImages = landmarksImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedLandImage =  chosenLandmarkImages
            destinationVC.selectedLandmarkName = chosenLandmarkName
        }
            
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarksNames.remove(at: indexPath.row)
            self.landmarksImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
}

