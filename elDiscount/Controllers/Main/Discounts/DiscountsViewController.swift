//
//  DiscountsViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 05.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class DiscountsViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Акции"
        view.setGradientToBackground()
        mainView.customizeMainView()
    }
}
