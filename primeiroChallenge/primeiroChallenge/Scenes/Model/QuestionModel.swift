//
//  QuestionModel.swift
//  primeiroChallenge
//
//  Created by Claudio Noberto  on 20/09/21.
//

import Foundation

struct QuestionModel {
    let title: String
    var answer: [AnswerModel]
    let answerCorrect: Int
    var isAnswer: Bool = false
}
