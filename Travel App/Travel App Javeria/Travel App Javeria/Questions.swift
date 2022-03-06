//
//  Questions.swift
//  Travel App Javeria
//
//  Created by Javeria on 27/02/2022.
//

import Foundation

struct Question{
    ///var question is for storing question and question type is being utlized for changing the UI
    var question: String
    var qiestionType: QuestionType
    var possibleAnwers : [String]
    var answersReflection: [CountriesList]
}
enum QuestionType{
    case optional, multiple, ranged
}
enum CountriesList: String{
    case iceland = "iceland", Netherlands = "Netherlands", India = "India", Mexico = "Mexico", Brazil = "Brazil", Uruguay = "Uruguay", Iran = "Iran", Finland = "Finland", Oman = "Oman", Nepal = "Nepal", Maldives  = "Maldives", Egypt = "Egypt", Indonesia = "Indonesia", Turkey = "Turkey", NewZealend = "New Zealend", Canada = "Canada"
    var description: String {
                return String(describing: self)
            }
}

var allQuestions: [Question] = [
    Question(question: "What type of food you like most?",
             qiestionType: .optional,
             possibleAnwers: ["Very spicy", "Sweets", "Normal spicy","Least spicy"],
             answersReflection: [.Mexico,.Netherlands,.India,.Iran]
            ),
    Question(question: "Your favorite weather?",
             qiestionType: .optional,
             possibleAnwers: ["Extreme Cold", "Cold", "Warm","Windy"],
             answersReflection: [.iceland,.Canada,.Oman,.NewZealend]
            ),
    Question(question: "How much do you like multi-cultural environment?",
             qiestionType: .ranged,
             possibleAnwers: ["0%", "25%", "50%","75%","100%"],
             answersReflection: [.Uruguay,.Uruguay,.Oman,.Turkey,.Canada]
            ),
    Question(question: "How much do you like multi-religious surrounding?",
             qiestionType: .ranged,
             possibleAnwers: ["0%", "25%", "50%","75%","100%"],
             answersReflection: [.Oman,.Oman,.Turkey,.Canada,.India]
            ),
    Question(question: "How much do you like multilingual surrounding?",
             qiestionType: .ranged,
             possibleAnwers: ["0%", "25%", "50%","75%","100%"],
             answersReflection: [.Brazil,.Brazil,.Mexico,.India,.Indonesia]
            ),
    Question(question: "Which activities you like most", qiestionType: .multiple, possibleAnwers: ["Walking","Sleeping","Talking", "Studing"], answersReflection: [.Netherlands,.NewZealend,.Indonesia,.India]),
    Question(question: "Which Culture you like most Asian or European?",
             qiestionType: .optional,
             possibleAnwers: ["Love both", "Asian only", "European only","None"],
             answersReflection: [.Turkey,.India,.iceland,.Mexico]
            ),
    Question(question: "How much you like snow?",
             qiestionType: .optional,
             possibleAnwers: ["Love it!", "I am okay with it", "Don't like it at all!","I don't care"],
             answersReflection: [.iceland,.Turkey,.India,.Nepal]
            ),
    Question(question: "How much you like adventures?",
             qiestionType: .ranged,
             possibleAnwers: ["0%", "25%", "50%","75%", "100%"],
             answersReflection: [.Maldives,.Maldives,.Egypt,.Nepal,.Uruguay]
            ),
    Question(question: "Are you good in high altitudes?",
             qiestionType: .ranged,
             possibleAnwers: ["0%", "25%", "50%","75%", "100%"],
             answersReflection: [.Iran,.Iran,.India,.Mexico,.Nepal]
            ),
    Question(question: "How much you like adventures?",
             qiestionType: .multiple,
             possibleAnwers: ["Fruit juices", "Coffee", "Tea","Wine"],
             answersReflection: [.Canada,.Finland,.India,.Uruguay]
            ),
    Question(question: "What type of land you like most?",
             qiestionType: .multiple,
             possibleAnwers: ["Desert", "Tall buildings", "Plateau","All"],
             answersReflection: [.Oman,.Canada,.Iran,.India]
            ),
    Question(question: "Which season is you favorite?",
             qiestionType: .optional,
             possibleAnwers: ["Winter", "Summer", "All","None"],
             answersReflection: [.Canada,.Maldives,.Iran,.Turkey]
            ),
    Question(question: "What food you like most?",
             qiestionType: .optional,
             possibleAnwers: ["Meat", "Vegetables", "Mixture","Only Spicy"],
             answersReflection: [.Canada,.India,.Oman,.Mexico]
            ),
    Question(question: "What you hate most?",
             qiestionType: .optional,
             possibleAnwers: ["Extreme Weather", "Spicy food", "Tall buildings","High temperature"],
             answersReflection: [.India,.Netherlands,.Iran,.Turkey]
            ),
]

