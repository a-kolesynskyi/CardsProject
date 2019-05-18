//
//  RulesVC.swift
//  CardsProject
//
//  Created by Antony Kolesynskyi on 4/15/19.
//  Copyright © 2019 Antony Kolesynskyi. All rights reserved.
//

import UIKit

class RulesVC: UIViewController {
    
    @IBOutlet weak var rulesLabel: UILabel!
    @IBOutlet weak var backgroundView: UIView!
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    let rulesText = "Суть игры очень проста - вы должны отвечать на вопросы вашего собеседника, а так же задавать их ему. Вопросы не сложные и помогают быстро создать контакт между людьми. Переворачивайте карточки по очереди и не забывает быть открытым для своего собеседника."
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundView.layer.cornerRadius = 8
        backgroundView.layer.shadowOffset = CGSize(width: 7, height: 7)
        backgroundView.layer.shadowRadius = 5
        backgroundView.layer.shadowOpacity = 0.5
        rulesLabel.text = rulesText
    }

}
