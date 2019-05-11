//
//  Tip.swift
//  NutriBuddy
//
//  Created by Andressa Valengo on 10/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import Foundation

class Tip {
    
    let text: String
    
    init(text: String) {
        self.text = text
    }
    
    func duration(wordsPerMinute: Int) ->  Int {
        let numberOfWords = text.split(separator: " ").count
        return max((60 * numberOfWords) / wordsPerMinute, 2)
    }
}
