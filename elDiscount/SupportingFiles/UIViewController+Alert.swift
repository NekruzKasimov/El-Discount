//
//  UIViewController+Alert.swift
//  elDiscount
//
//  Created by Sanira Madzhikova on 2/17/18.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import Foundation
import UIKit
extension UIViewController {
	
	func showErrorAlert(_ message: String) {
		showAlert(title: "Внимание!", msg: message)
	}
	
	func showAlert(title: String, msg: String) {
		let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
		let action = UIAlertAction(title: "OK", style: .default, handler: nil)
		alert.addAction(action)
		self.present(alert, animated: true, completion: nil)
	}
}
