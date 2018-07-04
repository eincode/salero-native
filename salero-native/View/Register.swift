//
//  Register.swift
//  salero-native
//
//  Created by Ananta Pratama on /4Jul/18.
//  Copyright © 2018 Ignitech. All rights reserved.
//

import UIKit

class Register: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var fullNameInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var confirmPasswordInput: UITextField!
    @IBOutlet weak var addressInput: UITextField!
    @IBOutlet weak var phoneNumberInput: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
        // Assign delegate for every input to self
        fullNameInput.delegate = self
        emailInput.delegate = self
        passwordInput.delegate = self
        confirmPasswordInput.delegate = self
        addressInput.delegate = self
        phoneNumberInput.delegate = self
        
        // Assign every input a tag
        fullNameInput.tag = 0
        emailInput.tag = 1
        passwordInput.tag = 2
        confirmPasswordInput.tag = 3
        addressInput.tag = 4
        phoneNumberInput.tag = 5
        
        // Hide the activity indicator first
        activityIndicator.isHidden = true
        
    }
    
    @IBAction func register() {
        activityIndicator.isHidden = false
        registerButton.setTitleColor(UIColor.clear, for: .normal)
    }
    
    // Next button handler in keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // Try to find the next responder
        if let nextTextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextTextField.becomeFirstResponder()
        } else {
            
            // Not found so remove keyboard
            textField.resignFirstResponder()
            self.register()
        }
        
        return false
    }

}
