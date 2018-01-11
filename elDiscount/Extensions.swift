//
//  Extensions.swift
//  elDiscount
//
//  Created by ZYFAR on 11.01.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

extension UIView {
    
    func setGradient(firstColor: UIColor, secondColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [firstColor.cgColor, secondColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 0.0)
        layer.insertSublayer(gradient, at: 0)
    }
}
