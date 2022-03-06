//
//  game.swift
//  Apple Tree
//
//  Created by Javeria on 12/01/2022.
//

import Foundation
struct Game {
    var word: String
    var incorrectMovesRemaining:Int
    var guessedLetter :[Character]
    
    var formatedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetter.contains(letter){
                guessedWord += "\(letter)"
            }
            else{
                guessedWord += "_"
            }
        }
        return guessedWord
    }
}
