//
//  AnswerWithInputViewController.swift
//  NutriBuddy
//
//  Created by Andressa Valengo on 11/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import UIKit

protocol AnswerWithInputDelegate: class {
    func buttonClicked(amount: Int)
}

class AnswerWithInputViewController: UIViewController {
    
    var question: Question!
    
    weak var delegate: AnswerWithInputDelegate?
    
    @IBOutlet var amountUnityLabel: UILabel!
    
    @IBOutlet var amountTextField: UITextField!
    
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        amountTextField.text = ""
        amountUnityLabel.text = question.answers.first
    }
    
    @IBAction func nextClick(_ sender: Any) {
        guard let text = amountTextField.text else {return}
        guard let asNumber = Int(text) else {return}
        self.delegate?.buttonClicked(amount: asNumber)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
