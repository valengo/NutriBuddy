//
//  Question.swift
//  NutriBuddy
//
//  Created by Andressa Valengo on 11/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import Foundation

struct Question {
    let group: QuestionGroup
    let text: String
    let answers: [String]
    let points: [Int]?
    let warning: String?
    let examples: [Example]?
    let tooltips: Dictionary<String, String>?
}

extension Question {
    var hasExamples: Bool {
        return examples == nil ? true : false
    }
    var answerType: AnswerType {
        return answers.count == 1 ? AnswerType.text : AnswerType.click
    }
    var hasTips: Bool {
        return tooltips != nil
    }
    var hasWarning: Bool {
        return warning != nil
    }
}
