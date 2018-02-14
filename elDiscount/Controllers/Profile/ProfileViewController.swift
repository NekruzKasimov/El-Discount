//
//  ProfileViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 05.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var numberOfCards: UILabel!
    @IBOutlet weak var numberOfCompanies: UILabel!
    @IBOutlet weak var numberOfScans: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Профиль"
        view.setGradientToBackground()
        mainView.customizeMainView()
        profileView.setGradientToButton()
        profileView.configureView()
        profileName.text = "Бакыт Аманов"
        numberOfCards.text = "\(35)\nкарт"
        numberOfCompanies.text = "\(350)\nкомпаний"
        numberOfScans.text = "\(35)\nсканов"
    }
}
