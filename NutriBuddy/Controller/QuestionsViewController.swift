//
//  QuestionsViewController.swift
//  NutriBuddy
//
//  Created by Andressa Valengo on 11/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {

    @IBOutlet var answerView: UIView!
    @IBOutlet var questionLabel: UILabel!
    
    let questions = QuestionRepository.shared.getAllQuestions()
    var currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(QuestionsViewController.keyboardWillShow),
                                               name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(QuestionsViewController.keyboardWillHide),
                                               name: UIResponder.keyboardWillHideNotification, object: nil)
        
        setView()

        // Do any additional setup after loading the view.
    }
    
    private lazy var answerWithInputViewController: AnswerWithInputViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "AnswerWithInputViewController") as! AnswerWithInputViewController
        viewController.delegate = self
        self.addChild(viewController)
        return viewController
    }()
    
    private lazy var answerWithClickCollection: CollectionViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "CollectionViewController") as! CollectionViewController
        viewController.delegate = self
        self.addChild(viewController)
        return viewController
    }()
    
    func setView() {
        if currentQuestionIndex > questions.count - 1 {
            if let vc = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController {
                self.navigationController?.show(vc, sender: self)
            }
        } else {
            let currentQuestion = questions[currentQuestionIndex]
            questionLabel.text = currentQuestion.text
            switch currentQuestion.answerType {
                case .click:
                    let viewController = answerWithClickCollection
                    viewController.question = self.questions[self.currentQuestionIndex]
                    remove(asChildViewController: answerWithInputViewController)
                    add(asChildViewController: viewController)
                case .text:
                    let viewController = answerWithInputViewController
                    viewController.question = self.questions[self.currentQuestionIndex]
                    remove(asChildViewController: answerWithClickCollection)
                    add(asChildViewController: viewController)
            }
        }
    }
    
    private func add(asChildViewController viewController: UIViewController) {
        // Add Child View Controller
        addChild(viewController)
        
        // Add Child View as Subview
        answerView.addSubview(viewController.view)

        // Configure Child View
        viewController.view.frame = answerView.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Notify Child View Controller
        viewController.didMove(toParent: self)
        viewController.viewWillAppear(true)
    }
    
    private func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParent: nil)
        
        // Remove Child View From Superview
        viewController.view.removeFromSuperview()
        
        // Notify Child View Controller
        viewController.removeFromParent()
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        guard let userInfo = notification.userInfo else {return}
        guard let keyboardSize = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else {return}
        let keyboardFrame = keyboardSize.cgRectValue
        if self.view.frame.origin.y == 0 {
            self.view.frame.origin.y -= keyboardFrame.height
        }
        
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
}

extension QuestionsViewController: AnswerWithInputDelegate {
    func buttonClicked(amount: Int) {
        view.endEditing(true)
        QuestionRepository.shared.addAnswer(questionIndex: currentQuestionIndex, answer: amount)
        currentQuestionIndex += 1
        setView()
    }
}

extension QuestionsViewController: AnswerWithClickDelegate {
    func cellCliked(atIndex: Int) {
        QuestionRepository.shared.addAnswer(questionIndex: currentQuestionIndex, answer: atIndex)
        currentQuestionIndex += 1
        setView()
    }
}
