//
//  HomeViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 05.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Главное меню"
        view.setGradientToBackground()
        mainView.customizeMainView()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Profile"), style: .plain, target: self, action: #selector(openProfile))
    }
    
    @objc func openProfile() {
        let sb = UIStoryboard(name: "Profile", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ProfileViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
}
