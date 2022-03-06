//
//  ViewController.swift
//  Introduction App
//
//  Created by Javeria on 27/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var educationButton: UIButton!
    @IBOutlet weak var professionButton: UIButton!
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var titleDescriptionText: UILabel!
    @IBOutlet weak var ratingSlider: UISlider!
    @IBOutlet weak var ratingLabeltext: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func educationButtonFunction(_ sender: Any) {
        titleText.text = "Educational Bio:"
        titleDescriptionText.text = "Javeria completed her foundation year at SZABIST Islamabad, currenly doing bachelors of Coding and software engineering at XU Exponential University of Applied Sciences, Potsdam. I have also completed one year specialization in Pen testing and web development from NCTP."
    }
    
    @IBAction func professButtonFunction(_ sender: Any) {
        titleText.text = "Professional Bio:"
        titleDescriptionText.text = "Javeria is a Junoir Web developer, in short her main job is coding and she simply love it. She always remains concern about color selection and she is an expert of HTML, CSS, JS, JSX, PHP, and MySQL."
    }
    @IBAction func ratingChangeFunction(_ sender: Any) {
        let sliderValue = Int(ratingSlider.value)
        ratingLabeltext.text = "Current rating is \(sliderValue)!"
    }
    
}

