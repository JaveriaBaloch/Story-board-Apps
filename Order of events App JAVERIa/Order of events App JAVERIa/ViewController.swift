//
//  ViewController.swift
//  Order of events App JAVERIa
//
//  Created by Javeria on 27/01/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = "Event number 3 was viewdidDisappear"
        screenSwitched = true
        }

}

