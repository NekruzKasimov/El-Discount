//
//  UITextFiled+PhoneNumberDelegate.swift
//  elDiscount
//
//  Created by Nail Galiaskarov on 2/17/18.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import Foundation
import UIKit
class TextFieldPhoneNumberDelegate: NSObject, UITextFieldDelegate {
	func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
		if range.location == 0 && range.length == 1 {
			return false
		}
		if range.location == 1 && range.length == 0 && string == "0" {
			return false
		}
		if range.location > 9 {
			return false
		}
		
		print("TEXTFIELD: \( string)")
		return true
	}
}
