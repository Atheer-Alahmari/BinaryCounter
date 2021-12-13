//
//  BinaryCounter_Cell.swift
//  BinaryCounter
//
//  Created by Atheer Alahmari on 08/05/1443 AH.
//

import UIKit

class BinaryCounter_Cell: UITableViewCell {

    var delegate : BinaryCounter_Cell_Delegate?
    
    @IBOutlet weak var cell_Label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   
    @IBAction func sub_Action(_ sender: UIButton) {
        if let num = self.cell_Label.text{
        delegate?.subtracting(subNew: Int(num)!)
        }
    }
    
    @IBAction func add_Action(_ sender: UIButton) {
        if let num = self.cell_Label.text{
        delegate?.adding(addNew: Int(num)!)
        }
    }
}
