//
//  CompaniesCollectionViewCell.swift
//  elDiscount
//
//  Created by ZYFAR on 05.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class CompaniesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cardView: UIView! {
        didSet {
            cardView.layer.cornerRadius = 8
            cardView.layer.masksToBounds = false
            cardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.2).cgColor
            cardView.layer.shadowOffset = CGSize(width: 0, height: 0)
            cardView.layer.shadowOpacity = 0.8
        }
    }
    
    @IBOutlet weak var separatorView: UIView! {
        didSet {
            separatorView.setGradientToBackground()
            separatorView.layer.cornerRadius = separatorView.frame.size.width / 2
            separatorView.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var companyLogo: UIImageView!
    @IBOutlet weak var companyTitle: UILabel!
    @IBOutlet weak var companyRating: UILabel!
    @IBOutlet weak var companyFollowers: UILabel!
    @IBOutlet weak var companyScans: UILabel!
    @IBOutlet weak var companyDescription: UILabel!
}
