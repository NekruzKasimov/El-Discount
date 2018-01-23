//
//  ViewController.swift
//  elDiscount
//
//  Created by ZYFAR on 04.12.17.
//  Copyright © 2017 NeoBis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //test
    @IBAction func deleteAfterTesting(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "SegmentedViewController")
        present(vc, animated: true, completion: nil)
    }
}

