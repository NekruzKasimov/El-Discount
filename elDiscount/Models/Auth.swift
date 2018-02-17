//
//  Auth.swift
//  elDiscount
//
//  Created by Sanira Madzhikova on 2/17/18.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import Foundation

struct Auth {
	var phone: String
	var password: String
	func toDic() -> [String: Any] {
		var dic: [String: Any] = [:]
		dic.updateValue(phone, forKey: "phone")
		dic.updateValue(password, forKey: "password")
	}
}

struct SignUp {
	var auth: Auth
	var firstName: String = first_name
	var lastName: String = last_name
	
	func toDic() -> [String: Any] {
		var dic: [String: Any] = auth.toDic()
		dic.updateValue(firstName, forKey: "first_name")
		dic.updateValue(firstName, forKey: "last_name")
		return dic
	}
}
