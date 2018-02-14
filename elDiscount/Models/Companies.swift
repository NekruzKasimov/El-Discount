//
//  Companies.swift
//  elDiscount
//
//  Created by ZYFAR on 09.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Company {
    var id: Int
    var name: String
    var description: String
    var banner: String
    var num_of_subscribers: Int
    var num_of_transactions: Int
    var logo: String
    
    init(json: JSON) {
        id = json["id"].intValue
        name = json["name"].stringValue
        description = json["description"].stringValue
        banner = json["banner"].stringValue
        num_of_subscribers = json["num_of_subscribers"].intValue
        num_of_transactions = json["num_of_transactions"].intValue
        logo = json["logo"].stringValue
    }
}

class Companies: NSObject {
    var array = Array<Company>()
    
    init(json: JSON) {
        let jsonArray = json.arrayValue
        for json in jsonArray {
            let tempObject = Company(json: json)
            array.append(tempObject)
        }
    }
}
