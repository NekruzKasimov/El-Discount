//
//  ApiAddress.swift
//  elDiscount
//
//  Created by ZYFAR on 12.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import Foundation


class ApiAddress {
    var scheme = "http"
    var domain = ""
    var endpoint: String = ""
    var param: String = ""
    
    func getURL() -> URL? {
        return URL(string: getURLString())
    }
    
    func getURLString() -> String {
        return "\(scheme)://\(domain)/\(endpoint)/\(param)"
    }
}

//http://107.170.214.203/api/v1/companies
