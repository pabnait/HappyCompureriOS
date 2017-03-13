//
//  StackCell.swift
//  HappyComputeriOS
//
//  Created by Mazharul on 3/13/17.
//  Copyright © 2017 Mazharul. All rights reserved.
//

import UIKit

class StackCell: UITableViewCell {
    @IBOutlet var ProductAmmountCell: UILabel!

    @IBOutlet var ProductName: UILabel!
    @IBOutlet var ProductAmmount: UILabel!
    
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
