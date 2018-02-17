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
	@IBOutlet weak var phoneNumberTextField: SkyFloatingLabelTextField!
	@IBOutlet weak var passwordTextField: SkyFloatingLabelTextField!
	@IBOutlet weak var confirmPasswordTextField: SkyFloatingLabelTextField!
	let textFieldPhoneNumberDelegate = TextFieldPhoneNumberDelegate()
	
	override func viewDidLoad() {
        super.viewDidLoad()
		setupTextFields()
    }
	
	func setupTextFields() {
		phoneNumberTextField.accessibilityIdentifier = "phoneNumberTextField"
		GlobalFunctions.configure(textField: phoneNumberTextField, withText: "Номер телефона", placeholder: "Номер телефона", tag: 2)
		phoneNumberTextField.keyboardType = .phonePad
		phoneNumberTextField.text = "0"
		phoneNumberTextField.delegate = textFieldPhoneNumberDelegate
		
		passwordTextField.accessibilityIdentifier = "passwordTextField"
		GlobalFunctions.configure(textField: passwordTextField, withText: "Пароль:", placeholder: "Пароль", tag: 3)
		passwordTextField.isSecureTextEntry = true
		
		confirmPasswordTextField.accessibilityIdentifier = "confirmPasswordTextField"
		GlobalFunctions.configure(textField: confirmPasswordTextField, withText: "Подтвердить пароль:", placeholder: "Подтвердить пароль", tag: 4)
		confirmPasswordTextField.isSecureTextEntry = true
	}
	//MARK: - Actions
    
    @IBAction func signup(_ sender: RoundedButton) {
        sender.startIndicatorAnimation()
    }
	
	@IBAction func login(_ sender: RoundedButton) {
		self.dismiss(animated: false, completion: nil)
	}
}
