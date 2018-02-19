//
//  Auth.swift
//  elDiscount
//
//  Created by Sanira Madzhikova on 2/17/18.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import Foundation

struct AuthModel {
	var phone: String
	var password: String
	func toDic() -> [String: Any] {
		var dic: [String: Any] = [:]
		dic.updateValue(phone, forKey: "phone")
		dic.updateValue(password, forKey: "password")
		return dic
	}
}

class SignUpModel {
	var auth: AuthModel
	var firstName: String
	var lastName: String
	init(phone: String, password: String, firstName: String, lastName: String) {
		self.auth = AuthModel(phone: phone,
							  password: phone)
		self.firstName = firstName
		self.lastName = lastName
	}
	
	func toDic() -> [String: Any] {
		var dic: [String: Any] = auth.toDic()
		dic.updateValue(firstName, forKey: "first_name")
		dic.updateValue(firstName, forKey: "last_name")
		return dic
	}
}
