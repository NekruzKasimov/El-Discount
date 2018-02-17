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
	
	
//	func signUp(newUser: NewUser, completion: @escaping (JSON)-> Void,error: @escaping (String)-> Void) {
//		//let param = category.toDict()
//		self.post(endpoint: Constants.Network.EndPoints.SignUp, serverType: , parameters: newUser.toDictionary(), completion: { (json) in
//			//let message = json[""]
//			completion(json)
//		}, error: error)
//	}

}
