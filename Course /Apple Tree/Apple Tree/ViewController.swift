//
//  ViewController.swift
//  Apple Tree
//
//  Created by Javeria on 12/01/2022.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords = ["ice","christmas", "potsdam", "germany", "study","education", "europe","america"]
    var incorrectMovesAllowed = 7
    @IBOutlet weak var treeImage: UIImageView!
    @IBOutlet weak var guessingWordLabel: UILabel!
    @IBOutlet weak var numberOfAttempsLeftLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var lossLabel: UILabel!
    var activeButtonsAgain = false
    @IBOutlet var buttonCollection: [UIButton]!
    var guessedLetter : [Character] = []
    var currentIndex = 0
    var position = 0
    var currentLetter : String = "_"
    var totalWins = 0
    var totalLosses = 0
    var placeHolder : [Character] = []
    var imageIncrement = [0,1,2,3,4,5,6,7]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func startingButtonPressed(_ sender: UIButton) {
        newRound()
        sender.setTitle("Restart", for: .normal)
        for button in self.buttonCollection {
            button.isEnabled = true
               }
        incorrectMovesAllowed = 7
      guessingWordLabel.text = " "
      numberOfAttempsLeftLabel.text! = "no. of attemps left:\t"+String(incorrectMovesAllowed)
    }
    func newRound(){
        guessingWordLabel.text = " "
        numberOfAttempsLeftLabel.text! = "no. of attemps left:\t"+String(incorrectMovesAllowed)
        activeButtonsAgain = true
    }
    
    @IBAction func anyAlphabetPressedAction(_ sender: UIButton) {
        ///button is functional now
        sender.isEnabled = false
        
        if  guessingWordLabel.text == "Guess The Word"{
            guessingWordLabel.text = " "
            newRound()
            activeButtonsAgain = false
        }
        let win = win()
        let fail = loss()
        if win{
            guessedLetter.removeAll()
            placeHolder.removeAll()
            guessingWordLabel.text! = " "
            totalWins += 1
            winLabel.text = "Win : \(totalWins)"
            treeImage.image = UIImage(named:"Tree \(imageIncrement[currentIndex])")
            newRound()
            for button in self.buttonCollection {
                button.isEnabled = true
                }
            checking()
            }
        if fail{
            guessingWordLabel.text! = "You Lose!"
            ///the function when you losses
                currentIndex = 0
                totalLosses += 1
                lossLabel.text = "Loss : \(totalLosses)"
                numberOfAttempsLeftLabel.text = "0"
            treeImage.image = UIImage(named:"Tree \(imageIncrement[currentIndex])")
                for button in self.buttonCollection {
                button.isEnabled = false
                   }
        }
        else{
            currentLetter = sender.titleLabel?.text ?? "_"
            checking()
        }

    }
   //intial check of existance function
    func checking(){
        guessingWordLabel.text! = String(guessedLetter)
        let letter = Character(currentLetter).lowercased()
        let currentWord = String(listOfWords[currentIndex])
         if !currentWord.contains(letter){
             if incorrectMovesAllowed > 0 {
            incorrectMovesAllowed -= 1
             }
            numberOfAttempsLeftLabel.text = "no. of attemps left:\t"+String(incorrectMovesAllowed)
//            guessingWordLabel.text! = " "
        }
    
        else{
            letterPositioning()
        }
    }
//    /per Alphabet and their position check function
    func letterPositioning(){
        ///converting to lower case the button text
        let letter = currentLetter.lowercased()
        /// current Word t
        let currentWord = listOfWords[currentIndex]
        ///converting current Word to String to impliment for in loop for Chacking
        let currentString = String(currentWord)
        //converting current word to Array
        let lettersArrayOfCurrentWord = Array(currentWord)
        //checking the current state of place holder text that is empty then fill it, so we do not get any error
        if placeHolder.isEmpty{
            SpaceCall()
        }
        /// for each Loop for Checking at which position char exist
        for eachLetter in 0..<(currentWord.count){
            ///char to string
            let charToString = String(lettersArrayOfCurrentWord[eachLetter])
            //alphabet presence check
            if letter == charToString{
                ///alphabet nil check
                if !letter.contains(""){
                    ////for loop is used positioning the alphabet  according the actual position
                    for (index,alphabet) in currentString.enumerated(){
                        if alphabet == Character(letter){
                        placeHolder[index] = Character(letter)
                        }
                    }
                }
            }
        }
        guessedLetter = placeHolder
        guessingWordLabel.text! = String(guessedLetter)
    }
    ///fuction for developing the placeholder text for the game
    func SpaceCall(){
        let currentWord = listOfWords[currentIndex]
        let currentString = String(currentWord)
        //converting current word to Array
        placeHolder.removeAll()
        ///
        for (_,_) in currentString.enumerated(){
            placeHolder.append("_")
            
        }
    }
    func loss()-> Bool{
        if incorrectMovesAllowed < 1{
            guessedLetter.removeAll()
            placeHolder.removeAll()
            return true
            
        }
        else{
            return false
        }
    }
    func win()-> Bool{
        let currentWord = listOfWords[currentIndex]
        let stringCurrentWord : String = String(currentWord)
        let inputText  = String(guessedLetter)
        if inputText == stringCurrentWord{
            if  currentIndex < (listOfWords.count - 1) {
                currentIndex += 1
            }
            else{
                currentIndex = 0
            }
            return true
        }
        else{
            return false
        }
        
    }
       
}
    

