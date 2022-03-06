//
//  AlarmViewController.swift
//  Alram App Javeria
//
//  Created by Javeria on 03/02/2022.
//

import UIKit

class AlarmViewController: UIViewController {

    @IBOutlet weak var setTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if displayDate.isEmpty {
            setTimeLabel.text! = "N/A"
        }
        else{
            if hourDigits.count < 2 {
            hourDigits =  "0" + hourDigits
            }
            if minutesDigits.count < 2 {
                minutesDigits = "0" + minutesDigits
            }
            setTimeLabel.text! = displayDate + hourDigits + ":" + minutesDigits
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
