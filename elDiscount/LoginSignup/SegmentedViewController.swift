//
//  SegmentedViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 22.01.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit
import SJSegmentedScrollView

class SegmentedViewController: SJSegmentedViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers()
    }
    
    func setupViewControllers() {
        let sb = UIStoryboard(name: "Login", bundle: nil)
        
        let headerVC = sb.instantiateViewController(withIdentifier: "Head")
        
        let loginVC = sb.instantiateViewController(withIdentifier: "LoginViewController")
        loginVC.title = "Логин"
        
        let signupVC = sb.instantiateViewController(withIdentifier: "SignupViewController")
        signupVC.title = "Регистрация"
        
        let segmentedController = SJSegmentedViewController(headerViewController: headerVC, segmentControllers: [loginVC, signupVC])
        
        segmentedController.headerViewHeight = 150
        segmentedController.segmentViewHeight = 60
        segmentedController.segmentTitleColor = .gray
        segmentedController.segmentTitleFont = UIFont.boldSystemFont(ofSize: 16)
        segmentedController.selectedSegmentViewColor = Colors.green
        segmentedController.segmentBounces = true
        segmentedController.segmentShadow = SJShadow.clear()
        segmentedController.showsHorizontalScrollIndicator = false
        segmentedController.showsVerticalScrollIndicator = false
        
        present(segmentedController, animated: true, completion: nil)
        
        addChildViewController(segmentedController)
        self.view.addSubview(segmentedController.view)
        segmentedController.view.frame = self.view.bounds
        segmentedController.didMove(toParentViewController: self)
    }
}
