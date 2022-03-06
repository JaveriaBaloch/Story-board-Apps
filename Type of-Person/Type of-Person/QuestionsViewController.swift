//
//  QuestionsViewController.swift
//  Type of-Person
//
//  Created by Javeria on 26/02/2022.
//

import UIKit

class QuestionsViewController: UIViewController {
    var questionIndex = 0
    @IBOutlet weak var Buttons: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    
    @IBOutlet weak var multipleLabel1: UILabel!
    @IBOutlet weak var multipleLabel2: UILabel!
    @IBOutlet weak var multipleLabel3: UILabel!
    @IBOutlet weak var multipleLabel4: UILabel!
    
    @IBOutlet weak var multipleSwitch1: UISwitch!
    @IBOutlet weak var multipleSwitch2: UISwitch!
    @IBOutlet weak var multipleSwitch3: UISwitch!
    @IBOutlet weak var multipleSwitch4: UISwitch!
    
    
    @IBOutlet weak var rangeChanges: UISlider!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    
    @IBOutlet weak var Switches: UIStackView!
    @IBOutlet weak var Slider: UIStackView!
    @IBOutlet weak var questionLabelText: UILabel!
    @IBOutlet weak var questionProgressView: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
beginning()
        // Do any additional setup after loading the view.
    }
    func beginning(){
        Buttons.isHidden = true
        Switches.isHidden = true
        Slider.isHidden = true
        updateUI()
    }
    func updateUI(){
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        let currentQuestion = questions[questionIndex]
        let currentAnwsers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        questionProgressView.setProgress(totalProgress, animated: true)
        switch currentQuestion.type {
        case .single:
            updateSingleStackView(using: currentAnwsers)
        case .multiple:
            updateMultipleStackView(using: currentAnwsers)
        case .ranged:
            updateRangedStackView(using: currentAnwsers)
        }
        questionLabelText.text! = currentQuestion.text
        
    }
    @IBAction func buttonsClicked(_ sender: Any) {
        let currentIndex = questionIndex + 1
        questionIndex = currentIndex
        beginning()
    }
    func updateSingleStackView(using answers: [Answer]){
        Buttons.isHidden = false
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
        
    }
    func updateMultipleStackView(using answers: [Answer]){
        Switches.isHidden = false
        multipleLabel1.text! = answers[0].text
        multipleLabel2.text! = answers[1].text
        multipleLabel3.text! = answers[2].text
        multipleLabel4.text! = answers[3].text
    }
    func updateRangedStackView(using answers: [Answer]){
        Slider.isHidden = false
        rangedLabel1.text! = answers.first?.text ?? " "
        rangedLabel2.text! = answers.last?.text ?? " "
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    var questions : [Question] = [
        Question(
            text: "Which food you like most?",
            type: .single,
            answers:
                [
                    Answer(text: "Bone", type: .dog),
                    Answer(text: "Streak", type: .dino),
                    Answer(text: "Corn", type: .turtle),
                    Answer(text: "Carrots", type: .rabbit)
                    
                ]
                ),
        Question(
            text: "Which activities do you enjoy?",
            type: .multiple,
            answers: [
                Answer(text: "Swimming", type: .turtle),
                Answer(text: "Cuddling", type: .rabbit),
                Answer(text: "Hunting", type: .dino),
                Answer(text: "Sleeping", type: .dog)
                
            ]
        ),
        Question(
            text: "How much do you enjoy car rides?",
            type: .ranged,
            answers: [
                Answer(text: "I dislike them", type: .dino),
                Answer(text: "I get a little nervous", type: .rabbit),
                Answer(text: "I barely notice them", type: .turtle),
                Answer(text: "I loves them", type: .dog),
            ]
        )
        
    ]
}
