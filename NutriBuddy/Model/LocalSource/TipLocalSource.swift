//
//  TipLocalSource.swift
//  NutriBuddy
//
//  Created by Andressa Valengo on 10/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import Foundation

final class TipLocalSource {
    var tips: [Tip] = []
    
    init() {
        tips.append(Tip(text: "Este teste é para pessoas entre 20 e 60 anos", image: ""))
        tips.append(Tip(text: "", image: ""))
    }
    
    func getAll() -> [Tip] {
        return tips
    }
}
