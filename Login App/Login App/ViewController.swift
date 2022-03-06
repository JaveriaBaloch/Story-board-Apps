//
//  ViewController.swift
//  Login App
//
//  Created by Javeria on 20/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    segue.destination.navigationItem.title = "Hi!" + textField.text!
    }
}

