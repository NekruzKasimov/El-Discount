//
//  ServerManager.swift
//  elDiscount
//
//  Created by Sanira Madzhikova on 2/17/18.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ServerManager: HTTPRequestManager  {
	
	class var shared: ServerManager {
		struct Static {
			static let instance = ServerManager()
		}
		return Static.instance
	}
	
	
	func signup(_ model: SignUpModel, completion: @escaping (Bool)-> Void, error: @escaping (String)-> Void) {
		self.post(endpoint: Constants.Network.EndPoints.signup, parameters: model.toDic(), completion: { (json) in
			//temporary shit
			self.login(model.auth, completion: { (isOk) in
				if isOk {
					completion(true)
				} else {
					completion(false)
				}
			}, error: error)
		}, error: error)
	}
	
	func login(_ model: AuthModel, completion: @escaping (Bool)-> Void, error: @escaping (String)-> Void) {
		self.post(endpoint: Constants.Network.EndPoints.login, parameters: model.toDic(), completion: { (json) in
			DataManager.token = json["token"].stringValue
			completion(true)
		}, error: error)
	}

}
