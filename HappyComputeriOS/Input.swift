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

  
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func OnSubmitButtonClicked(_ sender: Any) {
        
       
        
        
        let request = NSMutableURLRequest(url: NSURL(string: "http://happybd.net/InputDataReceve.php")! as URL)
        request.httpMethod = "POST"
        
        let postString = "providername=\(ProviderNameTextField.text!)&providercell=\(ProviderCellTextField.text!)&provideraddress=\(ProviderAddressTextfield.text!)&providerinvoice=\(ProviderInvoiceTextfield.text!)"
        
        request.httpBody = postString.data(using: String.Encoding.utf8)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            
            if error != nil {
                print("error=\(error)")
                return
            }
            
            print("response = \(response)")
            
            let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print("responseString = \(responseString)")
        }
        task.resume()

        
        
    }
    

}
    



