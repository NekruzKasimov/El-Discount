//
//  HomeViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 05.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let cellId = "HomeCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Главное меню"
        view.setGradientToBackground()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Profile"), style: .plain, target: self, action: #selector(openProfile))
    }
    
    @objc func openProfile() {
        let sb = UIStoryboard(name: "Profile", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ProfileViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width
        return CGSize(width: width, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
