//
//  Home.swift
//  HappyComputeriOS
//
//  Created by Mazharul on 3/13/17.
//  Copyright © 2017 Mazharul. All rights reserved.
//

import UIKit

class Home: UIViewController {

    
    
    let ImageView = UIImageView()
    let LableName = UILabel()
    let UserTextField = UITextField()
    let PassTextField = UITextField()
    let AddminLogo = UIImageView()
    let lockLogo = UIImageView()
    let LoginButton = UIButton()
    let SignUp = UIButton()
    let SView = UIView()
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.title = "Sign In"
        
        self.view.backgroundColor = UIColor(colorLiteralRed: 0/255, green: 116/255, blue: 196/255, alpha: 1)
        
        // Image View
        ImageView.image = UIImage(named: "hh")
        ImageView.frame = CGRect(x: 107, y: 42, width: 101, height: 99)
        self.view.addSubview(ImageView)
        
        
       
        
        
        // User Text Field
        
        UserTextField.frame = CGRect(x: 85, y: 223, width: 198, height: 42)
        AddminLogo.frame = CGRect(x: 46, y: 235, width: 20, height: 20)
        AddminLogo.image = UIImage(named: "Admin")
        UserTextField.placeholder = "Username"
        
        UserTextField.backgroundColor = UIColor(colorLiteralRed: 255, green: 255, blue: 255, alpha: 255)
        
        
        
        
        // Password Text Field
        
        PassTextField.frame = CGRect(x: 85, y: 264, width: 198, height: 42)
        PassTextField.placeholder = "Password"
        PassTextField.backgroundColor = UIColor(colorLiteralRed: 255, green: 255, blue: 255, alpha: 255)
        
        
        
        
        
        
        // Login Button
        
        
        
        LoginButton.frame = CGRect(x: 32, y: 319, width: 254, height: 40)
        LoginButton.backgroundColor = UIColor(colorLiteralRed: 0/255, green: 87/255, blue: 149/255, alpha: 1)
        LoginButton.setTitle("Login", for: UIControlState())
        LoginButton.addTarget(self, action: #selector(OnLoginButtonClicked), for: .touchUpInside)
        self.view.addSubview(LoginButton)
        
        
        // Don’t Have a account ? Sign Up
        
        SignUp.frame = CGRect(x: 50, y: 375, width: 224, height: 17)
        SignUp.setTitle("Don’t Have a account ? Sign Up", for: UIControlState())
        SignUp.backgroundColor = UIColor(colorLiteralRed: 0/255, green: 116/255, blue: 196/255, alpha: 1)
        SignUp.addTarget(self, action: #selector(OnSignUpbuttonClicked), for: .touchUpInside)
        SignUp.titleLabel?.font = UIFont(name: "Helvetica-Light", size: 14)
      
        
        
        self.view.addSubview(SignUp)
        
        
        
        
        // Lock Image
        
        lockLogo.frame = CGRect(x: 45, y: 271, width: 24, height: 22)
        lockLogo.image = UIImage(named: "lock")
        
        
        
        
        // View
        
        
        SView.frame = CGRect(x: 33, y: 215, width: 254, height: 97)
        SView.backgroundColor = UIColor.white
        SView.layer.cornerRadius = 8
        
        self.view.addSubview(SView)
        self.view.addSubview(UserTextField)
        self.view.addSubview(AddminLogo)
        self.view.addSubview(PassTextField)
        self.view.addSubview(lockLogo)
        
        
        
        
    }
    
    
    //
    
    
    
    
    
    
    
    func OnLoginButtonClicked () {
        
        if ((UserTextField.text! == "11") && (PassTextField.text! == "11"))
        
        {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarHome") as! Tabbar
            self.present(vc, animated: true, completion: nil)
            
        }
        
        else {
            
            let alertController = UIAlertController(title: "Incorrect Passcode!", message: "You Have Entered Worng Passcode", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
            
            
        }
        
    }
    
    
    func OnSignUpbuttonClicked () {
        
        print("Working !")
    }
    
    
    
}
