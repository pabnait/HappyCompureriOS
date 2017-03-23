//
//  Creact Account.swift
//  HappyComputeriOS
//
//  Created by Mazharul on 3/22/17.
//  Copyright © 2017 Mazharul. All rights reserved.
//

import UIKit

class Creact_Account: UIViewController, UITextFieldDelegate {


    
    let ImageView = UIImageView()
    let LableName = UILabel()
    let UserTextField = UITextField()
    let PassTextField = UITextField()
    let AddminLogo = UIImageView()
    let lockLogo = UIImageView()
    let LoginButton = UIButton()
    let SignUp = UIButton()
    let SView = UIView()
    let UserName = UITextField()
    let UserLogo = UIImageView()
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.title = "Sell Product"
        
        self.view.backgroundColor = UIColor(colorLiteralRed: 0/255, green: 116/255, blue: 196/255, alpha: 1)
        

        
        
        
        PassTextField.delegate = self
        UserTextField.delegate = self
        
        
        
        
        // User Nick Name
        
        
        
        UserName.frame = CGRect(x: 85, y: 174, width: 198, height: 42)
        
        UserLogo.frame = CGRect(x: 47, y: 185, width: 21, height: 21)
        UserLogo.image = UIImage(named: "Admin")
        UserName.placeholder = "Name"
        
        UserTextField.backgroundColor = UIColor(colorLiteralRed: 255, green: 255, blue: 255, alpha: 255)
        
        
        
        
        
        // User Text Field
        
        UserTextField.frame = CGRect(x: 85, y: 217, width: 198, height: 42)
        AddminLogo.frame = CGRect(x: 46, y: 235, width: 20, height: 20)
        AddminLogo.image = UIImage(named: "222")
        UserTextField.placeholder = "Email"
        
        UserTextField.backgroundColor = UIColor(colorLiteralRed: 255, green: 255, blue: 255, alpha: 255)
        
        
        
        
        // Password Text Field
        
        PassTextField.frame = CGRect(x: 84, y: 260, width: 198, height: 42)
        PassTextField.placeholder = "Password"
        PassTextField.backgroundColor = UIColor(colorLiteralRed: 255, green: 255, blue: 255, alpha: 255)
        
        
        
        
        
        
        // Login Button
        
        
        
        LoginButton.frame = CGRect(x: 32, y: 319, width: 254, height: 40)
        LoginButton.backgroundColor = UIColor(colorLiteralRed: 0/255, green: 87/255, blue: 149/255, alpha: 1)
        LoginButton.setTitle("Creact Account", for: UIControlState())
        LoginButton.addTarget(self, action: #selector(OnLoginButtonClicked), for: .touchUpInside)
        self.view.addSubview(LoginButton)
        
        
        // Don’t Have a account ? Sign Up
        
        SignUp.frame = CGRect(x: 50, y: 375, width: 224, height: 17)
        SignUp.setTitle("Have a account ? Sign In", for: UIControlState())
        SignUp.backgroundColor = UIColor(colorLiteralRed: 0/255, green: 116/255, blue: 196/255, alpha: 1)
        SignUp.addTarget(self, action: #selector(OnSignUpbuttonClicked), for: .touchUpInside)
        SignUp.titleLabel?.font = UIFont(name: "Helvetica-Light", size: 14)
        
        
        
        self.view.addSubview(SignUp)
        
        
        
        
        // Lock Image
        
        lockLogo.frame = CGRect(x: 45, y: 271, width: 24, height: 22)
        lockLogo.image = UIImage(named: "lock")
        
        
        
        
        // View
        
        
        SView.frame = CGRect(x: 34, y: 171, width: 254, height: 135)
        SView.backgroundColor = UIColor.white
        SView.layer.cornerRadius = 8
        
      
        self.view.addSubview(SView)
        self.view.addSubview(UserTextField)
        self.view.addSubview(AddminLogo)
        self.view.addSubview(PassTextField)
        self.view.addSubview(lockLogo)
        self.view.addSubview(UserName)
        self.view.addSubview(UserLogo)
        
        
        
        
        
    }
    
    
   
    
    
    
    
    
    
    
    func OnLoginButtonClicked () {
        
        
        
    }
    
    
    func OnSignUpbuttonClicked () {
        
   
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignInVC") as! Home
        self.present(vc, animated: true, completion: nil)
        
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { //delegate method
        textField.resignFirstResponder()
        return true
    }
    
    
}
