//
//  ViewController.swift
//  Alram App Javeria
//
//  Created by Javeria on 03/02/2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var dateInput: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submit(_ sender: Any) {
        date.dateFormat = "dd/MM/yyyy"
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: dateInput.date)
        let minute = calendar.component(.minute, from: dateInput.date)
        minutesDigits = String(minute)
        hourDigits = String(hour)
        displayDate = "Date:\t" + date.string(from: dateInput.date) + "\nTime:\t"
           //dismiss date picker dialog
    }
    
}

