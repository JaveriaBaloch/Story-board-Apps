//
//  ViewController.swift
//  Calculator
//
//  Created by Javeria on 20/01/2022.
//

import UIKit
enum Operations {
    case minus, add , divide, multiple
}
class ViewController: UIViewController {

    var bracket = false
    var equation : String = ""
    var num1 = 0.0
    var num2 = 0.0
    var newNumber = 0.0
    var allowSecondNumberInput = false
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var currentNumberUI: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBAction func Bracket(_ sender: Any) {
        
    }
    
    @IBAction func signSwitchPressed(_ sender: Any) {
       
    }

    @IBAction func numberButtonPressed(_ sender: UIButton) {
        var input = 0.0
        if var numNow :String? = currentNumberUI.text! as String {
            if Int(numNow ?? "0") == 0 {
                currentNumberUI.text! = sender.titleLabel?.text ?? "0.0"
                input = Double(currentNumberUI.text!) ?? 0.00
            }
            else{
                currentNumberUI.text! += sender.titleLabel?.text ?? "0.0"
                input = Double(currentNumberUI.text!) ?? 0.00
            }
            if allowSecondNumberInput{
                num2 = input
            }
            else {
                num1 = input
            }
        }
    }
    
    @IBAction func divideButtonPressed(_ sender: UIButton) {
        if var numNow :String? = currentNumberUI.text! as String {
            if Int((numNow as? String)!) != 0 {
                resultLabel.text! = currentNumberUI.text! + "/"
                allowSecondNumberInput = true
                if num2 != 0{
                    currentNumberUI.text! = "0"
                    num1 /= num2
                    num2 = 0
                }
               }
        }
        resultLabel.text! = String(num1)
    }
    @IBAction func multipleButtonPressed(_ sender: Any) {
        
    }
    @IBAction func addButtonPressed(_ sender: Any) {
      
    }
    @IBAction func substractButtonPressed(_ sender: UIButton) {
       
    }
    
    @IBAction func equalButtonPressed(_ sender: Any) {
       
    }

}
