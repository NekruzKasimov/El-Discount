//
//  CustomView.swift
//  elDiscount
//
//  Created by ZYFAR on 10.04.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class MainCustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupMainCustomView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupMainCustomView()
    }
    
    private func setupMainCustomView() {
        layer.cornerRadius = 20
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = 1.5
    }
}

class CustomView: UIView {
    
    @IBInspectable
    open var isColored = true {
        didSet {
            if isColored {
                backgroundColor = AppStyle.Color.blue
            } else {
                backgroundColor = UIColor.white
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupCustomView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupCustomView()
    }
    
    private func setupCustomView() {
        backgroundColor = AppStyle.Color.blue
        layer.cornerRadius = 5
        layer.masksToBounds = false
        //layer.shadowColor = AppStyle.Color.blue.cgColor
        //layer.shadowOpacity = 1
        //layer.shadowOffset = CGSize(width: 0, height: 1.5)
        //layer.shadowRadius = 2.5
    }
}
