//
//  CompanySegmentedViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 05.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit
import SJSegmentedScrollView

class CompanySegmentedViewController: SJSegmentedViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "О компании"
        setupViewControllers()
    }
    
    func setupViewControllers() {
        let sb = UIStoryboard(name: "AboutCompany", bundle: nil)
        
        let headerVC = sb.instantiateViewController(withIdentifier: "CompanyHeaderViewController")
        
        let contactsVC = sb.instantiateViewController(withIdentifier: "CompanyContactsViewController")
        contactsVC.title = "Контакты"
        
        let discountsVC = sb.instantiateViewController(withIdentifier: "CompanyDiscountsViewController")
        discountsVC.title = "Акции"
        
        let locationVC = sb.instantiateViewController(withIdentifier: "CompanyLocationViewController")
        locationVC.title = "На карте"
        
        let segmentedController = SJSegmentedViewController(headerViewController: headerVC, segmentControllers: [contactsVC, discountsVC, locationVC])
        
        segmentedController.headerViewHeight = 350
        segmentedController.segmentViewHeight = 50
        segmentedController.segmentTitleColor = .gray
        segmentedController.segmentTitleFont = UIFont.boldSystemFont(ofSize: 16)
        segmentedController.selectedSegmentViewColor = Colors.green
        segmentedController.segmentBounces = true
        segmentedController.segmentShadow = SJShadow.clear()
        segmentedController.showsHorizontalScrollIndicator = false
        segmentedController.showsVerticalScrollIndicator = false
                
        addChildViewController(segmentedController)
        self.view.addSubview(segmentedController.view)
        segmentedController.view.frame = self.view.bounds
        segmentedController.didMove(toParentViewController: self)
    }
}
