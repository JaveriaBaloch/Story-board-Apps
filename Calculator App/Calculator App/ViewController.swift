//
//  ViewController.swift
//  Calculator App
//
//  Created by Javeria on 28/12/2021.
//

import UIKit

class ViewController: UIViewController {
    var num1 = 0.00
    var num2 = 0.00
    var stringtwo = ""
    @IBOutlet weak var labelCompleteEquation: UILabel!
    @IBOutlet weak var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func numberPressed(_ sender: UIButton) {
        
        if outputLabel.text! == "0"{
            outputLabel.text! = "\(sender.tag)"
            num1 = (outputLabel.text! as NSString).doubleValue
        }
        else if outputLabel.text!.count <= 9 {
            outputLabel.text! += "\(sender.tag)"
            if !outputLabel.text!.contains("/") && !outputLabel.text!.contains("x") && !outputLabel.text!.contains("-") && !outputLabel.text!.contains("+"){
                let labeltwo = "\(outputLabel.text!)"
                num1 = (labeltwo as NSString).doubleValue
            }
            else if outputLabel.text!.contains("/") || outputLabel.text!.contains("x") || outputLabel.text!.contains("-") || outputLabel.text!.contains("+"){
               let labeltwo :String = "\(sender.tag)"
                stringtwo += labeltwo
            }
            
        }
        else {
            let labeltwo = "\(sender.tag)"
            num1 += (labeltwo as NSString).doubleValue
        }
    }
    @IBAction func allClear(_ sender: UIButton) {
        outputLabel.text! = "0"
        num1 = 0
        num2 = 0
        stringtwo = ""
        labelCompleteEquation.text = "0.00"
        
    }
    @IBAction func divideButton(_ sender: UIButton) {
        commonFunction()
        outputLabel.text! += "/"
    }
    @IBAction func multipleButton(_ sender: UIButton) {
        commonFunction()
        outputLabel.text! += "x"
       
    }
    @IBAction func substractButton(_ sender: UIButton) {
        commonFunction()
        outputLabel.text! += "-"
       
    }
    @IBAction func addButton(_ sender: UIButton) {
        outputLabel.text! += "+"
       
    }
    
    @IBAction func equalButton(_ sender: UIButton) {
        commonFunction()
    }
    @IBAction func dotPressed(_ sender: UIButton) {
        outputLabel.text! += "."
        
    }
    
    @IBAction func signChangeButtonIsPressed(_ sender: Any) {
        if num1 != 0{
            commonFunction()
            num1 = -1 * num1
            outputLabel.text! = String(num1)
    }
}
    @IBAction func bracket(_ sender: Any) {
        let textCheck = outputLabel.text!
        num2 += (stringtwo as NSString).doubleValue
        if textCheck.hasSuffix("/0") || textCheck.contains("/0."){
            outputLabel.text = "Math Error"
        }
        if textCheck.contains("/"){
            labelCompleteEquation.text! = "(\(num1) / \(num2))"
            num1 = num1/num2
            outputLabel.text = "\(num1)"
            num2 = 0
            stringtwo = ""
        }
        if textCheck.contains("x"){
            labelCompleteEquation.text! = "(\(num1) x \(num2))"
            outputLabel.text = "\(num1*num2)"
            num1 = num1*num2
            num2 = 0
            stringtwo = ""
        }
        if textCheck.contains("-"){
            
            labelCompleteEquation.text! = "(\(num1) - \(num2))"
            num1 = num1-num2
            outputLabel.text = "\(num1)"
            num2 = 0
            stringtwo = ""
        }
        if textCheck.contains("+"){
            labelCompleteEquation.text! = "(\(num1) + \(num2))"
            num1 = num1+num2
            outputLabel.text = "\(num1)"
            num2 = 0
            stringtwo = ""
        }
    }
    @IBAction func modeButtonPressed(_ sender: Any) {
        commonFunction()
        num1 = num1*0.01
        outputLabel.text = String(num1)
    }
    
    func commonFunction(){
        let textCheck = outputLabel.text!
        num2 += (stringtwo as NSString).doubleValue
        if textCheck.hasSuffix("/0") || textCheck.contains("/0."){
            outputLabel.text = "Math Error"
        }
        if textCheck.contains("/"){
            num1 = num1/num2
            outputLabel.text = "\(num1)"
            num2 = 0
            stringtwo = ""
        }
        if textCheck.contains("x"){
            outputLabel.text = "\(num1*num2)"
            num1 = num1*num2
            num2 = 0
            stringtwo = ""
        }
        if textCheck.contains("-"){
            num1 = num1-num2
            outputLabel.text = "\(num1)"
            num2 = 0
            stringtwo = ""
        }
        if textCheck.contains("+"){
            num1 = num1+num2
            outputLabel.text = "\(num1)"
            num2 = 0
            stringtwo = ""
        }
    }
}

