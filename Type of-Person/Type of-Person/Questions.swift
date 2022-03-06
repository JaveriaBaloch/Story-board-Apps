//
//  Questions.swift
//  Type of-Person
//
//  Created by Javeria on 26/02/2022.
//

import Foundation
struct Question{
    var text = String()
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType{
    case single, multiple, ranged
}
struct Answer{
    var text:String
    var type: AnimalType
}
enum AnimalType: Character{
    case dog = "🐶", rabbit = "🐰", dino = "🦖", turtle = "🐢"
    
    var definitaion: String{
        switch self {
        case .dog:
            return "You are incredibly outgoing"
        case .rabbit:
            return "You are full of energy and like orange"
        case .dino:
            return "You are hungry all the time"
        case .turtle:
            return "You are very wise and focus  on details"
        }
    }
}
