//
//  AnswerCell.swift
//  primeiroChallenge
//
//  Created by Claudio Noberto  on 18/09/21.
//

import UIKit

class AnswerCell: UITableViewCell {
    @IBOutlet var labelStyle: UILabel!
    @IBOutlet var backgroundCell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(model: AnswerModel) {
        labelStyle.text = model.name
        backgroundCell.layer.cornerRadius = 20
        backgroundCell.layer.borderWidth = 3
        setStyle(model.style)
        
    }
    
    func setStyle(_ style: AnswerModel.Styles) {
        switch style {
        case .defaultOne:
            backgroundCell.backgroundColor = .white
            backgroundCell.layer.borderColor = UIColor(white: 235/255, alpha: 1).cgColor
            labelStyle.textColor = .black
        case .selected:
            backgroundCell.backgroundColor = UIColor.init(red: 228/255, green: 233/255, blue: 255/255, alpha: 1)
            backgroundCell.layer.borderColor = UIColor.init(red: 178/255, green: 192/255, blue: 255/255, alpha: 1).cgColor
            labelStyle.textColor = UIColor.init(red: 178/255, green: 192/255, blue: 255/255, alpha: 1)
        case .correct:
            backgroundCell.backgroundColor = UIColor.init(red: 228/255, green: 254/255, blue: 230/255, alpha: 1)
            backgroundCell.layer.borderColor = UIColor.init(red: 151/255, green: 226/255, blue: 153/255, alpha: 1).cgColor
            labelStyle.textColor = UIColor.init(red: 84/255, green: 201/255, blue: 88/255, alpha: 1)
        case .incorrect:
            backgroundCell.backgroundColor = UIColor.init(red: 253/255, green: 214/255, blue: 214/255, alpha: 1)
            backgroundCell.layer.borderColor = UIColor.init(red: 251/255, green: 176/255, blue: 175/255, alpha: 1).cgColor
            labelStyle.textColor = UIColor.init(red: 248/255, green: 76/255, blue: 76/255, alpha: 1)
        }
    }
    
}
