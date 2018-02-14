//
//  NewUser.swift
//  elDiscount
//
//  Created by ZYFAR on 09.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import Foundation
import SwiftyJSON

class NewUser {
    var phone: String
    var password: String
    var first_name: String
    var last_name: String
    var email: String
    var gender: Int
    var birth_date: String
    var marital_status: Int
    var occupation_status: Int
    var city: Int
    var photo: String
    
    init(json: JSON) {
        phone = json["phone"].stringValue
        password = json["password"].stringValue
        first_name = json["first_name"].stringValue
        last_name = json["last_name"].stringValue
        email = json["email"].stringValue
        gender = json["gender"].intValue
        birth_date = json["birth_date"].stringValue
        marital_status = json["marital_status"].intValue
        occupation_status = json["occupation_status"].intValue
        city = json["city"].intValue
        photo = json["photo"].stringValue
    }
}
