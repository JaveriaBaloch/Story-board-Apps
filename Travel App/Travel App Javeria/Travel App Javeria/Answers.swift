//
//  Answers.swift
//  Travel App Javeria
//
//  Created by Javeria on 28/02/2022.
//

import Foundation
var answers: [CountriesList] = []
var answerMap : String = ""
var countryName = String()
func mostMatch(){
    var nameCountDictionary = [String: Int]()
    for answer in answers{
        if let count = nameCountDictionary[answer.description]{
            nameCountDictionary[answer.description] = count + 1
        }else{
            nameCountDictionary[answer.description] = 1
        }
    }
    var mostPrefferedCountry = " "
    
    for noOfTimes in nameCountDictionary.keys{
        if mostPrefferedCountry == "" {
            mostPrefferedCountry = noOfTimes
        }
        else{
            let count = nameCountDictionary[noOfTimes]!
            if count > nameCountDictionary[mostPrefferedCountry] ?? 1 {
                mostPrefferedCountry = noOfTimes
            }
        }
    }
   countryName = mostPrefferedCountry
}
