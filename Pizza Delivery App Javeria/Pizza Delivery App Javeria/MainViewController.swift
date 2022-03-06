//
//  ViewController.swift
//  Pizza Delivery App Javeria
//
//  Created by Javeria on 03/02/2022.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ChickenPizza(_ sender: UIButton) {
        totalPrice += chickenPizzaPrice
    }
    
    @IBAction func AfghaniPizza(_ sender: Any) {
        totalPrice += afghaniPizzaPrice

    }
    @IBAction func CheesePizza(_ sender: Any) {
        totalPrice += cheesePizzaPrice

    }
    @IBAction func VegetablePizza(_ sender: Any) {
        totalPrice += vegetablePizzaPrice

    }
}

