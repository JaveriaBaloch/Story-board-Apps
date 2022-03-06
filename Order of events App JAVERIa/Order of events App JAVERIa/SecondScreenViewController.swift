//
//  SecondScreenViewController.swift
//  Order of events App JAVERIa
//
//  Created by Javeria on 27/01/2022.
//

import UIKit

class SecondScreenViewController: UIViewController {

    @IBOutlet weak var topTextLabel: UILabel!
    @IBOutlet weak var bottomTextLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        displayTime += 1
        if displayTime > 1{
            if screenSwitched{
                topTextLabel.text! = "Event number 3 was viewWillDisappear"
                bottomTextLabel.text! = "Event number 4 was viewDidDisappear"
                
            }
        }
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = "Event number 3 was viewdidDisappear"
        screenSwitched = true
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
