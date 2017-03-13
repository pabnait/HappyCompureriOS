//
//  PeopleCell.swift
//  HappyComputeriOS
//
//  Created by Mazharul on 3/13/17.
//  Copyright © 2017 Mazharul. All rights reserved.
//

import UIKit

class PeopleCell: UITableViewCell {
    
    
    @IBOutlet var CustomerInvoiceLabel: UILabel!
    @IBOutlet var CustomerAmmountLabel: UILabel!
    @IBOutlet var CustomerNameLabel: UILabel!
    @IBOutlet var CustomerAddressLabel: UILabel!
    
    @IBOutlet var CustomerCellLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
