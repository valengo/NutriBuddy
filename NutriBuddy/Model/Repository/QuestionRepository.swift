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
}
