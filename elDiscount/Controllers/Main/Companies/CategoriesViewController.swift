//
//  CategoriesViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 05.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    private let categories = ["Еда" , "Досуг" , "Услуги" , "Одежда" , "Супермаркеты"]
    private let cellId = "categoryCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Компании"
        view.setGradientToBackground()
        mainView.customizeMainView()
    }
}

extension CategoriesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = categories[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Companies", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "CompaniesViewController")
        vc.navigationItem.title = categories[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
