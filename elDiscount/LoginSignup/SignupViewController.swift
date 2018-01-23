//
//  SignupViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 22.01.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class SignupViewController: UIViewController {

    @IBOutlet weak var loginTextField: SkyFloatingLabelTextField! {
        didSet {
            loginTextField.accessibilityIdentifier = "loginTextField"
            GlobalFunctions.configure(textField: loginTextField, withText: "Логин:", placeholder: "Логин", tag: 0)
        }
    }
    
    @IBOutlet weak var emailTextField: SkyFloatingLabelTextField! {
        didSet {
            emailTextField.accessibilityIdentifier = "emailTextField"
            GlobalFunctions.configure(textField: emailTextField, withText: "E-mail:", placeholder: "E-mail", tag: 1)
            emailTextField.keyboardType = .emailAddress
        }
    }
    
    @IBOutlet weak var phoneNumberTextField: SkyFloatingLabelTextField! {
        didSet {
            phoneNumberTextField.accessibilityIdentifier = "phoneNumberTextField"
            GlobalFunctions.configure(textField: phoneNumberTextField, withText: "Телефон:", placeholder: "Телефон", tag: 2)
            phoneNumberTextField.keyboardType = .phonePad
        }
    }
    
    @IBOutlet weak var passwordTextField: SkyFloatingLabelTextField! {
        didSet {
            passwordTextField.accessibilityIdentifier = "passwordTextField"
            GlobalFunctions.configure(textField: passwordTextField, withText: "Пароль:", placeholder: "Пароль", tag: 3)
            passwordTextField.isSecureTextEntry = true
        }
    }
    
    @IBOutlet weak var confirmPasswordTextField: SkyFloatingLabelTextField! {
        didSet {
            confirmPasswordTextField.accessibilityIdentifier = "confirmPasswordTextField"
            GlobalFunctions.configure(textField: confirmPasswordTextField, withText: "Подтвердить пароль:", placeholder: "Подтвердить пароль", tag: 4)
            confirmPasswordTextField.isSecureTextEntry = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signup(_ sender: RoundedButton) {
        sender.startIndicatorAnimation()
    }
}
