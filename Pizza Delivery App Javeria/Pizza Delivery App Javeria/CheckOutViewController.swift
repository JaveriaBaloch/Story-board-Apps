//
//  CheckOutViewController.swift
//  Pizza Delivery App Javeria
//
//  Created by Javeria on 03/02/2022.
//

import UIKit

class CheckOutViewController: UIViewController {

    @IBOutlet weak var thankyouLabel: UILabel!
    @IBOutlet weak var addressInput: UITextField!
    @IBOutlet weak var phoneLabel: NSLayoutConstraint!
    @IBOutlet weak var totalPriceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let totalPriceInString = "Total Price:\t\(totalPrice)"
        totalPriceLabel.text = totalPriceInString
        thankyouLabel.text = " "
        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkOutPressed(_ sender: Any) {
        if totalPrice == 0.0{
            thankyouLabel.text = "Oops! your cart is empty!"
        }
        else{
            if ((addressInput.text?.isEmpty) != nil){
                thankyouLabel.text = "Thank You!"
            }
           
        }
    }
    @IBAction func emptyCart(_ sender: Any) {
        totalPrice = 0.0
        let totalPriceInString = "Total Price:\t\(totalPrice)"
        totalPriceLabel.text = totalPriceInString
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
