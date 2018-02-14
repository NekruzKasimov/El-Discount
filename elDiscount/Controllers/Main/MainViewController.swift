//
//  MainViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 05.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureNavigationControllers()
    }

    func configureNavigationControllers() {
        let cardsVC = createNavigationController(storyboard: "Cards", viewController: "CardsViewController", unselectedImage: "Cards", selectedImage: "Cards")
        let companiesVC = createNavigationController(storyboard: "Companies", viewController: "CategoriesViewController", unselectedImage: "Companies", selectedImage: "Companies")
        let homeVC = createNavigationController(storyboard: "Home", viewController: "HomeViewController", unselectedImage: "Home", selectedImage: "Home")
        let discountsVC = createNavigationController(storyboard: "Discounts", viewController: "DiscountsViewController", unselectedImage: "Discounts", selectedImage: "Discounts")
        let settingsVC = createNavigationController(storyboard: "Settings", viewController: "SettingsViewController", unselectedImage: "Settings", selectedImage: "Settings")
        
        viewControllers = [cardsVC, companiesVC, homeVC, discountsVC, settingsVC]
    }
    
    func createNavigationController(storyboard: String, viewController: String, unselectedImage: String, selectedImage: String) -> UINavigationController {
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: viewController)
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: unselectedImage), selectedImage: UIImage(named: selectedImage))
        navController.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        return navController
    }
}
