//
//  Login.swift
//  salero-native
//
//  Created by Ananta Pratama on /26Jun/18.
//  Copyright © 2018 Ignitech. All rights reserved.
//

import UIKit

class Login: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
        //Assign delegate for every input to self
        emailInput.delegate = self
        passwordInput.delegate = self
        
        //Assign every input a tag
        emailInput.tag = 0
        passwordInput.tag = 1
        
        //Hide activity indicator first
        activityIndicator.isHidden = true
    }
    
    @IBAction func login() {
        activityIndicator.isHidden = false
        loginButton.setTitleColor(UIColor.clear, for: .normal )
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Try to find the next responder
        if let nextTextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextTextField.becomeFirstResponder()
        } else {
            //Not found so remove keyboard
            textField.resignFirstResponder()
            self.login()
        }
        return false
    }
    
}
