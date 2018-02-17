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
	@IBOutlet weak var firstNameTextField: SkyFloatingLabelTextField!
	@IBOutlet weak var lastNameTextField: SkyFloatingLabelTextField!
	@IBOutlet weak var passwordTextField: SkyFloatingLabelTextField!
	@IBOutlet weak var confirmPasswordTextField: SkyFloatingLabelTextField!
	let textFieldPhoneNumberDelegate = TextFieldPhoneNumberDelegate()
	
	override func viewDidLoad() {
        super.viewDidLoad()
		setupTextFields()
    }
	
	func setupTextFields() {
		setupPhoneTextField()
		setupFirstnameTextField()
		setupLastnameTextField()
		setupPasswordTextField()
		setupConfirmPasswordTextField()
	}
	
	func setupPhoneTextField() {
		phoneNumberTextField.accessibilityIdentifier = "phoneNumberTextField"
		GlobalFunctions.configure(textField: phoneNumberTextField, withText: "Номер телефона", placeholder: "Номер телефона", tag: 1)
		phoneNumberTextField.keyboardType = .phonePad
		phoneNumberTextField.text = "0"
		phoneNumberTextField.delegate = textFieldPhoneNumberDelegate
	}
	
	func setupFirstnameTextField() {
		firstNameTextField.accessibilityIdentifier = "firstNameTextField"
		GlobalFunctions.configure(textField: firstNameTextField, withText: "Имя", placeholder: "Ваше имя", tag: 2)
	}
	
	func setupLastnameTextField() {
		lastNameTextField.accessibilityIdentifier = "lastNameTextField"
		GlobalFunctions.configure(textField: lastNameTextField, withText: "Фамилия", placeholder: "Ваша фамилия", tag: 3)
	}
	
	func setupPasswordTextField() {
		passwordTextField.accessibilityIdentifier = "passwordTextField"
		GlobalFunctions.configure(textField: passwordTextField, withText: "Пароль", placeholder: "Пароль", tag: 4)
		passwordTextField.isSecureTextEntry = true
	}
	
	func setupConfirmPasswordTextField() {
		confirmPasswordTextField.accessibilityIdentifier = "confirmPasswordTextField"
		GlobalFunctions.configure(textField: confirmPasswordTextField, withText: "Подтвердить пароль", placeholder: "Подтвердить пароль", tag: 5)
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
