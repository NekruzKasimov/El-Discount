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
	let textFieldPhoneNumberDelegate = TextFieldPhoneNumberDelegate()
	@IBOutlet weak var loginTextField: SkyFloatingLabelTextField!
	@IBOutlet weak var passwordTextField: SkyFloatingLabelTextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupLoginTextField()
		setupPasswordTextField()
	}
	
	func setupLoginTextField() {
		loginTextField.accessibilityIdentifier = "loginTextField"
		GlobalFunctions.configure(textField: loginTextField, withText: "Номер телефона:", placeholder: "Номер телефона", tag: 0)
		loginTextField.text = "0"
		loginTextField.delegate = textFieldPhoneNumberDelegate
	}
	
	func setupPasswordTextField() {
		passwordTextField.accessibilityIdentifier = "passwordTextField"
		GlobalFunctions.configure(textField: passwordTextField, withText: "Пароль:", placeholder: "Пароль", tag: 1)
		passwordTextField.isSecureTextEntry = true
	}
	
	func showRegistration() {
		
	}
	
	func showMainController() {
		let vc = Constants.Storyboard.main
			.instantiateViewController(withIdentifier: Constants.ControllerID.mainVC)
		present(vc, animated: true, completion: nil)
	}
	
	//MARK: - Actions
    
    @IBAction func login(_ sender: RoundedButton) {
		sender.startIndicatorAnimation()
		showMainController()
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        
    }
}

