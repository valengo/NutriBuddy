//
//  QuestionRepository.swift
//  NutriBuddy
//
//  Created by Andressa Valengo on 11/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import Foundation

final class QuestionRepository {
    static let shared = QuestionRepository()
    private let localSource = QuestionLocalSource()
    private var totalPoints = 0
    private var mealGroupCount = 0
    private var choGroupCounters: [Int] = []
    
    private init() {}
    
    func getAllQuestions() -> [Question] {
        return localSource.getAll()
    }
    
    func addAnswer(questionIndex: Int, answer: Int) {
        let question = getAllQuestions()[questionIndex]
        switch question.group {
            case .cho:
                choGroupCounters.append(answer)
            case .meals:
                mealGroupCount += 1
            default:
                totalPoints += question.points![answer]
        }
    }
    
    func getTotalPoints() -> Int {
        var totalCho = 0.0
        totalCho += Double(choGroupCounters[0]) / 3
        totalCho += Double(choGroupCounters[1]) / 2
        totalCho += Double(choGroupCounters[2]) / 1
        totalCho += Double(choGroupCounters[3]) / 6
        if totalCho < 3 {
            totalPoints += 1
        } else if totalCho >= 3 && totalCho <= 4.4 {
            totalPoints += 2
        } else if totalCho >= 4.5 && totalCho <= 7.5 {
            totalPoints += 3
        } else if totalCho > 7.5 {
            totalPoints += 4
        }
        
        if mealGroupCount == 3 || mealGroupCount == 4 {
            totalPoints += 2
        } else if mealGroupCount == 5 || mealGroupCount == 6 {
            totalPoints += 3
        }
        
        return totalPoints
    }
}
