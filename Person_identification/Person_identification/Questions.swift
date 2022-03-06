//
//  Questions.swift
//  Person_identification
//
//  Created by Javeria on 03/02/2022.
//

import Foundation

struct Questions{
    var text : String
    var type : ResponseType
    var correctAnwsers : [Answer]
}
enum ResponseType {
    case single, multiple, range
}
struct Answer {
    var text : String
    var type : AnimalType
    
}
enum AnimalType: Character{
    case dog = "🐶", dino = "🦖", turtle = "🐢", rabbit = "🐰"
    
    var definition: String{
        switch self{
            case .dog:
                return "You are incredibly outgoing!"
        
            case .dino:
                return "You are hungry all the time!"
            case .turtle:
                return "You are very wise and focus on detials"
            case .rabbit:
                return "You are full of energy and do like orange."
        }
    }
}
