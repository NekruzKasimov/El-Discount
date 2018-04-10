//
//  CompaniesViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 05.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class CompaniesViewController: UIViewController {
    
    private let cellId = "CompaniesCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setGradientToBackground()
        
    }
}

extension CompaniesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CompaniesCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "AboutCompany", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "CompanySegmentedViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width

        return CGSize(width: width, height: 130)
    }
}
