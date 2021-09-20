//
//  QuestionViewController.swift
//  primeiroChallenge
//
//  Created by Claudio Noberto  on 18/09/21.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var labelStyle: UILabel!
    var questions: [QuestionModel]
    var madeAPoint = 0
    var indexOfQuestion = 0
    var selectedRow: Int?
    init(questions: [QuestionModel]) {
        self.questions = questions
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var buttonStyle: UIButton!
    @IBAction func buttonAction(_ sender: Any) {
        if selectedRow != nil {
            if questions[indexOfQuestion].isAnswer {
                buttonStyle.setTitle("Responder", for: [])
                buttonStyle.backgroundColor = UIColor.init(red: 211/255, green: 212/255, blue: 212/255, alpha: 1)
                indexOfQuestion += 1
                if indexOfQuestion < questions.count {
                    selectedRow = nil
                    update()
                } else {
                    let viewController = ResultViewController(Points: madeAPoint)
                    navigationController?.pushViewController(viewController, animated: true)
                }
                
            } else {
            for indexAnswer in 0..<questions[indexOfQuestion].answer.count {
                if indexAnswer == questions[indexOfQuestion].answerCorrect {
                    if questions[indexOfQuestion].answer[indexAnswer].style == .selected {
                        madeAPoint += 1
                    }
                    questions[indexOfQuestion].answer[indexAnswer].style = .correct
                    
                } else if questions[indexOfQuestion].answer[indexAnswer].style == .selected {
                    questions[indexOfQuestion].answer[indexAnswer].style = .incorrect
                }
            }
                tableView.reloadData()
                questions[indexOfQuestion].isAnswer = true
                buttonStyle.setTitle("Próxima pergunta", for: [])
            }
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "AnswerCell", bundle: nil), forCellReuseIdentifier: "Answer Cell")
        tableView.dataSource = self
        tableView.delegate = self
        labelStyle.text = questions[indexOfQuestion].title
        buttonStyle.layer.cornerRadius = 25
        title = "Perguntas e respostas"
    }
    
    func update() {
        labelStyle.text = questions[indexOfQuestion].title
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions[indexOfQuestion].answer.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Answer Cell", for: indexPath) as? AnswerCell {
            cell.setup(model: questions[indexOfQuestion].answer[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if !indexPath.isEmpty {
            buttonStyle.backgroundColor = UIColor.init(red: 116/255, green: 140/255, blue: 255/255, alpha: 1)
            for indexAnswer in 0..<questions[indexOfQuestion].answer.count {
                questions[indexOfQuestion].answer[indexAnswer].style = indexAnswer == indexPath.row ? .selected : .defaultOne
            }
            selectedRow = indexPath.row
        }
        
        tableView.reloadData()
    }


   
}
