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
	
	func canSignUp() -> Bool {
		guard passwordTextField.text!.count >= 5 else {
			showErrorAlert("Пароль должен состоять из более чем 5 символов")
			return false
		}
		guard confirmPasswordTextField.text! == passwordTextField.text! else {
			showErrorAlert("Ваши пароли не совпадают")
			return false
		}
		guard !firstNameTextField.text!.isEmpty else {
			showErrorAlert("Пожалуйста, введите имя")
			return false
		}
		guard !lastNameTextField.text!.isEmpty else {
			showErrorAlert("Пожалуйста, введите фамилию")
			return false
		}
		return true
	}
	
	func getSignupModel() -> SignUpModel {
		let auth = AuthModel(phone: phoneNumberTextField.text!,
							 password: passwordTextField.text!)
		let signupModel =
			SignUpModel(phone: phoneNumberTextField.text!,
						password: passwordTextField.text!,
						firstName: firstNameTextField.text!,
						lastName: lastNameTextField.text!)
		return signupModel
	}
	func showMainController() {
		let vc = Storyboard.Main.mainVC
		present(vc, animated: true, completion: nil)
	}
	
	//MARK: - Actions
    
    @IBAction func signup(_ sender: RoundedButton) {
		guard canSignUp() else {
			return
		}
		sender.startIndicatorAnimation()
		ServerManager.shared.signup(getSignupModel(),
									completion: { (isOK) in
										if isOK {
											self.showMainController()
			}
		}) { (message) in
			self.showErrorAlert(message)
		}
		
		
    }
	
	@IBAction func login(_ sender: RoundedButton) {
		self.dismiss(animated: false, completion: nil)
	}
}
