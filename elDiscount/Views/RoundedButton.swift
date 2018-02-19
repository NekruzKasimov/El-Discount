//
//  RoundedButton.swift
//  elDiscount
//
//  Created by ZYFAR on 12.01.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {

    private var activityIndicator: UIActivityIndicatorView!
    private var isClicked = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        confgureButton()
        confgureIndicator()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        confgureButton()
        confgureIndicator()
    }
    
    private func confgureButton() {
        self.setGradientToButton()
        layer.cornerRadius = frame.size.height / 2
        layer.masksToBounds = true
        
        setTitleColor(.white, for: .normal)
        titleLabel?.font = AppStyle.Font.bold
    }
    
    private func confgureIndicator(){
        activityIndicator = UIActivityIndicatorView(frame:CGRect(origin: .zero, size: CGSize(width: 24, height: 24)))
        activityIndicator.activityIndicatorViewStyle = .white
        activityIndicator.hidesWhenStopped = true
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(activityIndicator)
        let xConstraint = NSLayoutConstraint(item: activityIndicator, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0)
        let yConstraint = NSLayoutConstraint(item: activityIndicator, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)
        NSLayoutConstraint.activate([xConstraint, yConstraint])
    }
    
    func activateButton(bool: Bool) {
        
        isClicked = bool
        
        let title      = isClicked ? "pressed" : "press"
        let titleColor = isClicked ? .white : AppStyle.Color.blue
        let background = isClicked ? AppStyle.Color.blue : .clear
        
        backgroundColor = background
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
    }
    
    func stopIndicatorAnimation() {
        activityIndicator.stopAnimating()
        self.isEnabled = true
    }
    
    func startIndicatorAnimation() {
        activityIndicator.startAnimating()
        self.isEnabled = false
        self.setTitle("", for: .normal)
    }
}
