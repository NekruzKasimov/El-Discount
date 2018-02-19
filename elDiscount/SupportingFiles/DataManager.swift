//
//  DataManager.swift
//  elDiscount
//
//  Created by Sanira Madzhikova on 2/17/18.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import Foundation

struct DataManager {
	
	static var hasLoginCredentials: Bool =  {
		
		guard let _ = DataManager.userLogin,
			  let _ = DataManager.userPassword else {
			return false
		}
		return true
	}()
	
	static var token: String {
		get {
			return UserDefaults.standard.string(forKey:
				Constants.StorageKey.token) ?? ""
		}
		set {
			UserDefaults.standard.set(newValue, forKey: Constants.StorageKey.token)
		}
	}
	
	static var userLogin: String? =
		UserDefaults.standard.string(forKey:
		Constants.StorageKey.login)
	
	static var userPassword: String? =
		UserDefaults.standard.string(forKey:
		Constants.StorageKey.password)
	
}
