//
//  Extensions.swift
//  elDiscount
//
//  Created by ZYFAR on 11.01.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

extension UIView {
    
    func setGradientToButton() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [AppStyle.Color.green.cgColor, AppStyle.Color.blue.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 0.0)
        layer.insertSublayer(gradient, at: 0)
    }
    
    func setGradientToBackground() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [AppStyle.Color.green.cgColor, AppStyle.Color.blue.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        layer.insertSublayer(gradient, at: 0)
    }
    
    func configureView() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.size.height / 2
    }
}
