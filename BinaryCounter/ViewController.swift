//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Atheer Alahmari on 08/05/1443 AH.
//

import UIKit

class ViewController: UIViewController , BinaryCounter_Cell_Delegate {
 
  
    

    @IBOutlet weak var tabel_View: UITableView!
    @IBOutlet weak var totel_Label: UILabel!


  var totel = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabel_View.dataSource = self
    }

    
    func subtracting(subNew: Int) {
        totel -= subNew
        totel_Label.text = "Totel: \(totel)"
    
    }
    
    func adding(addNew: Int) {
        totel += addNew
        totel_Label.text = "Totel: \(totel)"
        }
    
    

}
extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ID_BinaryCell", for: indexPath) as! BinaryCounter_Cell
        
        cell.cell_Label?.text = "\(pow(10,indexPath.row))"
        cell.delegate = self
        return cell
    }
}
