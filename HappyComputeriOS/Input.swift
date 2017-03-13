//
//  Input.swift
//  HappyComputeriOS
//
//  Created by Mazharul on 3/13/17.
//  Copyright © 2017 Mazharul. All rights reserved.
//

import UIKit

class Input: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var PriceValueLabel: UILabel!
    @IBOutlet var PriceLabel: UILabel!
    @IBOutlet var ProviderNameTextField: UITextField!
    @IBOutlet var ProviderCellTextField: UITextField!
    @IBOutlet var ProviderAddressTextfield: UITextField!
    @IBOutlet var ProviderInvoiceTextfield: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ProviderNameTextField.delegate = self
        ProviderCellTextField.delegate = self
        ProviderAddressTextfield.delegate = self
        ProviderInvoiceTextfield.delegate = self
        
        self.PriceLabel.isHidden = true
        self.PriceValueLabel.isHidden = true
        
        
        
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


