//
//  RoundedButton.swift
//  elDiscount
//
//  Created by ZYFAR on 12.01.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {

    var isClicked = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initBtn()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initBtn()
    }
    
    func initBtn() {
        layer.borderWidth = 2
        layer.borderColor = Colors.blue.cgColor
        layer.cornerRadius = frame.size.height / 2
        
        setTitleColor(Colors.blue, for: .normal)
        
        addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        activateButton(bool: !isClicked)
    }
    
    func activateButton(bool: Bool) {
        
        isClicked = bool
        
        let title      = isClicked ? "pressed" : "press"
        let titleColor = isClicked ? .white : Colors.blue
        let background = isClicked ? Colors.blue : .clear
        
        backgroundColor = background
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
    }
}
