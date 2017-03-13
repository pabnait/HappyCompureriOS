//
//  Sell.swift
//  HappyComputeriOS
//
//  Created by Mazharul on 3/13/17.
//  Copyright © 2017 Mazharul. All rights reserved.
//

import UIKit

class Sell: UIViewController, UITextFieldDelegate {

   
    @IBOutlet var CustomerPriceLabel: UILabel!
    @IBOutlet var CustomerPriceLabelValue: UILabel!
    @IBOutlet var CustomerName:UITextField!
    @IBOutlet var CustomerAddress:UITextField!
    @IBOutlet var CustomerCell:UITextField!
    @IBOutlet var CustomerInvioce:UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CustomerName.delegate = self
        CustomerAddress.delegate = self
        CustomerCell.delegate = self
        CustomerInvioce.delegate = self
        
        
        self.CustomerPriceLabel.isHidden = true
        self.CustomerPriceLabelValue.isHidden = true
        
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
    }

}


