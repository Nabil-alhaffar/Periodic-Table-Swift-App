//
//  Element.swift
//  Periodic Table
//
//  Created by Nabil Haffar on 9/26/19.
//  Copyright © 2019 Nabil Haffar. All rights reserved.
//
import Foundation
import UIKit

class ElementCell: UITableViewCell {
    
    @IBOutlet weak var atomicMassLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var symbolLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
