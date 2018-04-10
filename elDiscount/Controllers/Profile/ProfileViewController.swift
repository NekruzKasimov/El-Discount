//
//  ProfileViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 05.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
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
        profileView.setGradientToButton()
        profileView.configureView()
        profileName.text = "Бакыт Аманов"
        numberOfCards.text = "\(35)\nкарт"
        numberOfCompanies.text = "\(350)\nкомпаний"
        numberOfScans.text = "\(35)\nсканов"
    }
}

extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
