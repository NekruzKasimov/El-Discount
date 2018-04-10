//
//  SettingsViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 05.02.2018.
//  Copyright © 2018 NeoBis. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    private let settings = ["Уведомления" , "Основные" , "Учетная запись" , "Настройки контента" , "О приложении" , "Выход"]
    private let cellId = "settingsCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Настройки"
        view.setGradientToBackground()
    }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = settings[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 5 {
            let sb = UIStoryboard(name: "Login", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "LoginViewController")
            present(vc, animated: true, completion: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

