//
//  LoginViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 22.01.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: SkyFloatingLabelTextField! {
        didSet {
            loginTextField.accessibilityIdentifier = "loginTextField"
            GlobalFunctions.configure(textField: loginTextField, withText: "Логин:", placeholder: "Логин", tag: 0)
        }
    }
    
    @IBOutlet weak var passwordTextField: SkyFloatingLabelTextField! {
        didSet {
            passwordTextField.accessibilityIdentifier = "passwordTextField"
            GlobalFunctions.configure(textField: passwordTextField, withText: "Пароль:", placeholder: "Пароль", tag: 1)
            passwordTextField.isSecureTextEntry = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func login(_ sender: RoundedButton) {
        sender.startIndicatorAnimation()
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        
    }
}
