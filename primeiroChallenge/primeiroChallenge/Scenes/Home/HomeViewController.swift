//
//  HomeViewController.swift
//  primeiroChallenge
//
//  Created by Claudio Noberto  on 18/09/21.
//

import UIKit

class HomeViewController: UIViewController {
    let question1 = QuestionModel(title: "Qual o atual CEO da Apple?",
                                  answer: [AnswerModel(name: "Tim Cook", style: .defaultOne),
                                           AnswerModel(name: "Bill Gates", style: .defaultOne),
                                           AnswerModel(name: "Jeff Bezos", style: .defaultOne),
                                           AnswerModel(name: "Mark Zuckerberg", style: .defaultOne)],
                                  answerCorrect: 0)
    
    let question2 = QuestionModel(title: "Quando o Apple Silicon foi anunciado?",
                                  answer: [AnswerModel(name: "2018", style: .defaultOne),
                                           AnswerModel(name: "2019", style: .defaultOne),
                                           AnswerModel(name: "2021", style: .defaultOne),
                                           AnswerModel(name: "2020", style: .defaultOne)],
                                  answerCorrect: 3)
    
    let question3 = QuestionModel(title: "O iPhone 13 tem qual processador?",
                                  answer: [AnswerModel(name: "A14", style: .defaultOne),
                                           AnswerModel(name: "A15", style: .defaultOne),
                                           AnswerModel(name: "A11", style: .defaultOne),
                                           AnswerModel(name: "A13", style: .defaultOne)],
                                  answerCorrect: 1)
    
    let question4 = QuestionModel(title: "Qual o serviço de nuvem da Apple?",
                                  answer: [AnswerModel(name: "iCloud", style: .defaultOne),
                                           AnswerModel(name: "GoogleDrive", style: .defaultOne),
                                           AnswerModel(name: "Dropbox", style: .defaultOne),
                                           AnswerModel(name: "OneDrive", style: .defaultOne)],
                                  answerCorrect: 0)
    
    let question5 = QuestionModel(title: "Qual a linguagem de programação da Apple?",
                                  answer: [AnswerModel(name: "JavaScript", style: .defaultOne),
                                           AnswerModel(name: "Python", style: .defaultOne),
                                           AnswerModel(name: "Swift", style: .defaultOne),
                                           AnswerModel(name: "C++", style: .defaultOne)],
                                  answerCorrect: 2)
    
    let question6 = QuestionModel(title: "Qual o produto mais vendido da Apple?",
                                  answer: [AnswerModel(name: "Airpods", style: .defaultOne),
                                           AnswerModel(name: "iPad", style: .defaultOne),
                                           AnswerModel(name: "Mac", style: .defaultOne),
                                           AnswerModel(name: "iPhone", style: .defaultOne)],
                                  answerCorrect: 3)
    
    let question7 = QuestionModel(title: "O iPad mini com A15 foi anunciado em",
                                  answer: [AnswerModel(name: "2021", style: .defaultOne),
                                           AnswerModel(name: "2017", style: .defaultOne),
                                           AnswerModel(name: "2020", style: .defaultOne),
                                           AnswerModel(name: "2016", style: .defaultOne)],
                                  answerCorrect: 0)
    
    let question8 = QuestionModel(title: "Qual o nome do macOS anunciado em 2020?",
                                  answer: [AnswerModel(name: "Leopard", style: .defaultOne),
                                           AnswerModel(name: "Monterey", style: .defaultOne),
                                           AnswerModel(name: "Lion", style: .defaultOne),
                                           AnswerModel(name: "BigSur", style: .defaultOne)],
                                  answerCorrect: 1)
    
    let question9 = QuestionModel(title: "Qual o aplicativo de mensagem da Apple?",
                                  answer: [AnswerModel(name: "Whatsapp", style: .defaultOne),
                                           AnswerModel(name: "iMessage", style: .defaultOne),
                                           AnswerModel(name: "Telegram", style: .defaultOne),
                                           AnswerModel(name: "Signal", style: .defaultOne)],
                                  answerCorrect: 1)
    
    let question10 = QuestionModel(title: "Qual foi o primeiro iPhone com FaceID?",
                                   answer: [AnswerModel(name: "iPhone X", style: .defaultOne),
                                            AnswerModel(name: "iPhone XR", style: .defaultOne),
                                            AnswerModel(name: "iPhone 8", style: .defaultOne),
                                            AnswerModel(name: "iPhone 12", style: .defaultOne)],
                                   answerCorrect: 0)
    
    lazy var questions: [QuestionModel] = [
        question1,
        question2,
        question3,
        question4,
        question5,
        question6,
        question7,
        question8,
        question9,
        question10
    ]
    
    @IBOutlet var viewChild: UIView!
    @IBOutlet var buttonStyle: UIButton!
    @IBAction func buttonAction(_ sender: Any) {
        let QuestionViewController = QuestionViewController(questions: questions)
        navigationController?.pushViewController(QuestionViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        buttonStyle.layer.cornerRadius = 20
        viewChild.layer.cornerRadius = 20
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.barTintColor = UIColor.init(red: 116/255, green: 140/255, blue: 255/255, alpha: 1)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        title = ""
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Perguntas e respostas"
    }
}
