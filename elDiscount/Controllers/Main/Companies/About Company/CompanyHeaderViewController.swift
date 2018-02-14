//
//  CompanyHeaderViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 06.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class CompanyHeaderViewController: UIViewController {
    
    @IBOutlet weak var companyLogo: UIImageView!
    @IBOutlet weak var companyTitle: UILabel!
    @IBOutlet weak var companyRating: UILabel!
    @IBOutlet weak var companyDescription: UILabel!
    @IBOutlet weak var companyFollowers: UILabel!
    @IBOutlet weak var companyScans: UILabel!
    
    @IBOutlet weak var separatorView: UIView! {
        didSet {
            separatorView.setGradientToButton()
            separatorView.layer.cornerRadius = separatorView.frame.size.height / 2
            separatorView.layer.masksToBounds = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        companyTitle.text = "Samsung"
        companyRating.text = "4.2"
        companyFollowers.text = "350\nподписчиков"
        companyScans.text = "3500\nсканов"
        companyDescription.text = "Технологии Samsung меняют представление о смартфонах будущего. Каждая новая серия преодолевает ограничения и открывает возможности, которых вам по-настоящему не хватало."
    }
}
