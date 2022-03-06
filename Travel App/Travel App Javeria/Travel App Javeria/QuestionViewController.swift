//
//  QuestionViewController.swift
//  Travel App Javeria
//
//  Created by Javeria on 27/02/2022.
//

import UIKit

class QuestionViewController: UIViewController {
    ///result screen
    @IBOutlet weak var resultCountryMap: UIImageView!
    @IBOutlet weak var covid19Updates: UILabel!
    @IBOutlet weak var countryNameLabel: UILabel!
    
    
    @IBOutlet weak var topTitle: UINavigationItem!
    @IBOutlet weak var questionDisplayTextLabel: UILabel!
    var questionIndex = 0
    var totalQuestions = allQuestions.count
    
    //all types of IUs called
    @IBOutlet weak var multipleChooseQuestionUI: UIStackView!
    @IBOutlet weak var optionalQuestionUI: UIStackView!
    @IBOutlet weak var rangedQuestionUI: UIStackView!
   
    /// result UI components
    @IBOutlet weak var resultUI: UIScrollView!
    ///ranged questions UI components
    @IBOutlet weak var rangeSlider: UISlider!
    @IBOutlet weak var minValueLabelText: UILabel!
    
    ///optional questions UI components
    @IBOutlet weak var optionOneButton: UIButton!
    @IBOutlet weak var optionTwoButton: UIButton!
    @IBOutlet weak var optionThreeButton: UIButton!
    @IBOutlet weak var optionFourButton: UIButton!
    
    ///multiple questions UI components
    @IBOutlet weak var multipleLabelOne: UILabel!
    @IBOutlet weak var multipleLabelTwo: UILabel!
    @IBOutlet weak var multipleLabelThree: UILabel!
    @IBOutlet weak var multipleLabelFour: UILabel!
    @IBOutlet weak var multipleSwitchOne: UISwitch!
    @IBOutlet weak var multipleSwitchTwo: UISwitch!
    @IBOutlet weak var multipleSwitchThree: UISwitch!
    @IBOutlet weak var multipleSwitchFour: UISwitch!
    
    //Sumbit Quiz UI
    @IBOutlet weak var submitButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultUI.isHidden = true
        if questionIndex < totalQuestions{
        updateUI()
        }
    }
    func uiDisplay(){
    if questionIndex < totalQuestions{
        if let uiCheck1 = multipleChooseQuestionUI{
        multipleChooseQuestionUI.isHidden = true
        }
        if let uiCheck2 = optionalQuestionUI{
        optionalQuestionUI.isHidden = true
        }
        if let uiCheck3 = rangedQuestionUI{
        rangedQuestionUI.isHidden = true
        }
        if let uiCheck4 = submitButton{
        submitButton.isHidden = true
        }

    }
    }
    func updateUI(){
        if questionIndex < totalQuestions {
            uiDisplay()
            topTitle.title = "Question #\(questionIndex + 1) "
        let currentQuestion = allQuestions[questionIndex]
        switch currentQuestion.qiestionType {
        case .optional:
            if let uiCheck2 = optionalQuestionUI{
            optionalQuestionUI.isHidden = false
            }
            optionsDisplayForOptionalQuestions()
        case .multiple:
            if let uiCheck1 = multipleChooseQuestionUI{
            multipleChooseQuestionUI.isHidden = false
            }
            optionsDisplayForMultipleQuestions()
        case .ranged:
            if let uiCheck3 = rangedQuestionUI{
            rangedQuestionUI.isHidden = false
            }

        }
            questionDisplayTextLabel.text! = currentQuestion.question
        }
        else{
            topTitle.title = "Submission"
            questionDisplayTextLabel.isHidden = true
            multipleChooseQuestionUI.isHidden = true
            optionalQuestionUI.isHidden = true
            rangedQuestionUI.isHidden = true
            submitButton.isHidden = true
            limitQuestionIndex()
        }
    }
    func optionsDisplayForMultipleQuestions(){
        let currentQuestion = allQuestions[questionIndex]
        multipleLabelOne.text = "\(currentQuestion.possibleAnwers[0])"
        multipleLabelTwo.text = "\(currentQuestion.possibleAnwers[1])"
        multipleLabelThree.text = "\(currentQuestion.possibleAnwers[2])"
        multipleLabelFour.text = "\(currentQuestion.possibleAnwers[3])"
    }
    func optionsDisplayForOptionalQuestions(){
        let currentQuestion = allQuestions[questionIndex]
        optionOneButton.setTitle("\(currentQuestion.possibleAnwers[0])", for: .normal)
        optionTwoButton.setTitle("\(currentQuestion.possibleAnwers[1])", for: .normal)
        optionThreeButton.setTitle("\(currentQuestion.possibleAnwers[2])", for: .normal)
        optionFourButton.setTitle("\(currentQuestion.possibleAnwers[3])", for: .normal)
        
    }
    @IBAction func sliderPressed(_ sender: Any) {
        switch Int(rangeSlider.value) {
        case 0:
            minValueLabelText.text! = "0%"
        case 1:
            minValueLabelText.text! = "25%"
        case 2:
            minValueLabelText.text! = "50%"
        case 3:
            minValueLabelText.text! = "75%"
        case 4:
            minValueLabelText.text! = "100%"
        default:
            break
        }
    }
    @IBAction func rangedConfirmPressed(_ sender: Any){
        let currentQuestion = allQuestions[questionIndex]
        switch minValueLabelText.text {
        case "0%":
            answers.append(currentQuestion.answersReflection[0])
            limitQuestionIndex()
            updateUI()
        case "25%":
            answers.append(currentQuestion.answersReflection[1])
            limitQuestionIndex()
            updateUI()
        case "50%":
            answers.append(currentQuestion.answersReflection[2])
            limitQuestionIndex()
            updateUI()
        case "75%":
            answers.append(currentQuestion.answersReflection[3])
            limitQuestionIndex()
            updateUI()
        case "100%":
            answers.append(currentQuestion.answersReflection[4])
            limitQuestionIndex()
            updateUI()
        default:
            break
        }
    }
    func limitQuestionIndex(){
        if questionIndex < totalQuestions{
            questionIndex += 1
        }
        else {
            questionDisplayTextLabel.text! = " "
            submitButton.isHidden = false
        }
    }
    @IBAction func buttonOnePressed(_ sender: Any) {
        let currentQuestion = allQuestions[questionIndex]
        answers.append(currentQuestion.answersReflection[0])
        limitQuestionIndex()
        updateUI()
    }
    @IBAction func buttonTwoPressed(_ sender: Any) {
        let currentQuestion = allQuestions[questionIndex]
        answers.append(currentQuestion.answersReflection[1])
        limitQuestionIndex()
        updateUI()
    }
    @IBAction func buttonThreePressed(_ sender: Any) {
        let currentQuestion = allQuestions[questionIndex]
        answers.append(currentQuestion.answersReflection[2])
        limitQuestionIndex()
        updateUI()
    }
    @IBAction func buttonFourPressed(_ sender: Any) {
        let currentQuestion = allQuestions[questionIndex]
        answers.append(currentQuestion.answersReflection[3])
        limitQuestionIndex()
        updateUI()
    }
    @IBAction func AnswerForMultipleChoose(_ sender: Any) {
        let currentQuestion = allQuestions[questionIndex]
        if multipleSwitchOne.isOn {
            answers.append(currentQuestion.answersReflection[0])
        }
        if multipleSwitchTwo.isOn {
            answers.append(currentQuestion.answersReflection[1])
        }
        if multipleSwitchThree.isOn {
            answers.append(currentQuestion.answersReflection[2])
        }
        if multipleSwitchFour.isOn {
            answers.append(currentQuestion.answersReflection[3])
        }
        limitQuestionIndex()
        updateUI()
    }

//    @IBAction func quizSubmitted(_ sender: UIButton) {
//        resultUI.isHidden = false
//        mostMatch()
//        countryNameLabel.text! = countryName
//        covidStatement()
//        covid19Updates.text! = covidEntryRequirements
//    }
    @IBAction func seeResults(_ sender: Any) {
        resultUI.isHidden = false
        submitButton.isHidden = true
        mostMatch()
        countryNameLabel.text! = countryName
        covidStatement()
        covid19Updates.text! = covidEntryRequirements
        resultCountryMap.image = UIImage(named:answerMap)
        topTitle.title = "Result"
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
