//
//  NewCashier.swift
//  elDiscount
//
//  Created by ZYFAR on 09.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import Foundation
import SwiftyJSON

class NewCashier {
    var username: String
    var password: String
    var first_name: String
    var last_name: String
    var email: String
    
    init(json: JSON) {
        username = json["username"].stringValue
        password = json["password"].stringValue
        first_name = json["first_name"].stringValue
        last_name = json["last_name"].stringValue
        email = json["email"].stringValue
    }
}
