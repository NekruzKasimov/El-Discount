//
//  GlobalFunctions.swift
//  elDiscount
//
//  Created by ZYFAR on 23.01.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

struct GlobalFunctions {
    
    static func configure(textField: SkyFloatingLabelTextField, withText text:String, placeholder:String, tag:Int){
        textField.autocorrectionType = .no
        textField.font = UIFont(name: ".SFUIText", size: 15)
        textField.returnKeyType = .done
        textField.placeholder = placeholder
        textField.title = text
        textField.selectedTitleColor = Colors.green
        textField.selectedLineColor = Colors.green
        textField.tag = tag
    }
}
