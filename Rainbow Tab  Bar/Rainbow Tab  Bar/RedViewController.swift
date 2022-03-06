//
//  ViewController.swift
//  Rainbow Tab  Bar
//
//  Created by Javeria on 27/01/2022.
//

import UIKit

class RedViewController: UIViewController {
//
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "Javeria"
        tabBarItem.badgeColor = .green
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarItem.badgeValue = nil
    }

}

