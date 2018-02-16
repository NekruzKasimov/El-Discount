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
		textField.font = AppStyle.Font.regular
		textField.titleFont = AppStyle.Font.regular
		textField.placeholderFont = AppStyle.Font.regular
        textField.returnKeyType = .done
        textField.placeholder = placeholder
        textField.title = text
        textField.selectedTitleColor = AppStyle.Color.green
        textField.selectedLineColor = AppStyle.Color.green
        textField.tag = tag
    }
}
