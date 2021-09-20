//
//  ResultViewController.swift
//  primeiroChallenge
//
//  Created by Claudio Noberto  on 18/09/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    let Points: Int

    @IBOutlet var viewChildStyle: UIView!
    @IBOutlet var resultStyle: UILabel!
    @IBAction func tryAgainButtonAction(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    init(Points: Int) {
        self.Points = Points
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
       
    }
    
    func setup() {
        resultStyle.text = "\(Points)/10 Acertos"
        viewChildStyle.layer.cornerRadius = 20
        navigationItem.hidesBackButton = true
        title = "Perguntas e respostas"
    }
    
    


   

}
