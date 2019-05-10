//
//  TipRepository.swift
//  NutriBuddy
//
//  Created by Andressa Valengo on 10/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import Foundation

final class TipRepository {
    
    static let shared = TipRepository()
    
    private let localSource = TipLocalSource()
    
    private init(){}
    
    func getAllTips() -> [Tip] {
        return localSource.getAll()
    }
}
