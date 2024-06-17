//
//  ViewController.swift
//  BreakingBadBook
//
//  Created by Faruk Eymen Baltaci on 8.11.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var myBreakingBad = [BreakingBad]()
    var chosenBrekingBad : BreakingBad?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let walter = BreakingBad(BBname: "Walter White", BBjob: "Job: Chemical Teacher", BBstory: "Story: Kanser olduktan sonra ailesine geride para bırakma amacıyla liseden eski öğrencisi Jesse Pinkman ile uyuşturucu imalatı ve dağıtımı işine girmiştir.", BBimage: UIImage(named: "walter")!)
        
        let jessie = BreakingBad(BBname: "Jessie Pinkman", BBjob: "Job: Drug Dealer", BBstory: "Story: Kimya öğretmeni Walter White' ın mükemmel saflıkta uyuşturucu imalatı yaptığını gören Jessie Pinkman bu uyuşturucunun imalatına yardımcı olup sokaktaki satışını gerçekleştirmektedir.", BBimage: UIImage(named: "jessie")!)
        
        let gustavo = BreakingBad(BBname: "Gustavo Fring", BBjob: "Job: CEO Los Pollos Hermanos & Boss Drug Dealer", BBstory: " Story: Los Pollos Hermanos adlı tavuk lokanta zincirinin işletmecisidir. İşletmecilik adı altında gizli bir uyuşturucu imparatorluğu yönetmektedir. ", BBimage: UIImage(named: "gustavo")!)
        
        let hank = BreakingBad(BBname: "Hank schrader", BBjob: "Job: Police Officer", BBstory: "Story: Hank Schrader, Walter White'in bacanağıdır. Uyuşturucu ile Mücadele Dairesi ajanıdır. Meslektaşı Steve Gomez'le birlikte Heisenberg davasını çözmeye çalışır. ", BBimage: UIImage(named: "hank")!)
        
        let saul = BreakingBad(BBname: "Saul Goodman", BBjob: "Job: Lawyer", BBstory: "Story: Yasa dışı işlerle meşgul olan bir avukattır. Delil temizleme veya sahte telefon aramaları gibi müşterilerine yardım edecek işlerde de bulunur. Walter White, Gustavo Fring gibi birçok suçlunun hukuki işlerini üstlenmiştir.", BBimage: UIImage(named: "saul")!)
        
        myBreakingBad.append(walter)
        myBreakingBad.append(jessie)
        myBreakingBad.append(gustavo)
        myBreakingBad.append(hank)
        myBreakingBad.append(saul)
        
    }
        //numberOfRowsInSection, TableView' ın satırlarını oluşturmak için kullanılır.
        //Örneğin return 10 demek 10 satırlık bir tableview oluştur demektir.
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return myBreakingBad.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = myBreakingBad[indexPath.row].name
            return cell
        }
        
        //Hücre tıklandığında ıdentifier da belirttiğimiz yere gitmeyi sağlar.
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            chosenBrekingBad = myBreakingBad[indexPath.row]
            self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toDetailsVC" {
                let destinationVC = segue.destination as! DetailVC
                destinationVC.selectedBrakingBad = chosenBrekingBad
            }
        }
        
    
}

