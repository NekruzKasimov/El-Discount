//
//  Users.swift
//  elDiscount
//
//  Created by ZYFAR on 09.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import Foundation
import SwiftyJSON

struct User {
    var id: Int
    var username: String
    var first_name: String
    var last_name: String
    var phone: String
    var email: String
    var money_spent: Int
    var money_saved: Int
    
    init(json: JSON) {
        id = json["id"].intValue
        username = json["username"].stringValue
        first_name = json["first_name"].stringValue
        last_name = json["last_name"].stringValue
        phone = json["phone"].stringValue
        email = json["email"].stringValue
        money_spent = json["money_spent"].intValue
        money_saved = json["money_saved"].intValue
    }
}

class Users: NSObject {
    var array = Array<User>()
    
    init(json: JSON) {
        let jsonArray = json.arrayValue
        for json in jsonArray {
            let tempObject = User(json: json)
            array.append(tempObject)
        }
    }
}
