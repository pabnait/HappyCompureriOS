//
//  DueBlanceCell.swift
//  HappyComputeriOS
//
//  Created by Mazharul on 3/13/17.
//  Copyright © 2017 Mazharul. All rights reserved.
//

import UIKit

class DueBlanceCell: UITableViewCell {
    @IBOutlet var DueCustomerInvoiceLabel: UILabel!
    @IBOutlet var DueCustomerAmmountLabel: UILabel!
    @IBOutlet var DueCustomerCellLabel: UILabel!
    @IBOutlet var DueCoustomerNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
