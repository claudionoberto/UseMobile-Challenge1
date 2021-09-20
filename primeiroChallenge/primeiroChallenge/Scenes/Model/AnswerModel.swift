//
//  AnswerModel.swift
//  primeiroChallenge
//
//  Created by Claudio Noberto  on 20/09/21.
//

import Foundation

struct AnswerModel {
    enum Styles {
        case defaultOne
        case selected
        case correct
        case incorrect
    }
    
    let name: String
    var style: Styles
}
