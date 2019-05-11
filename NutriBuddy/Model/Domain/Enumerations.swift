//
//  QuestionType.swift
//  NutriBuddy
//
//  Created by Andressa Valengo on 11/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import Foundation

enum QuestionType {
    case regular
    case complex
}

enum AnswerType {
    case click
    case text
}

enum QuestionGroup: String {
    case fruits = "frutas"
    case vegetables = "legumes"
    case grains = "graos"
    case cho = "carboidratos"
    case protein = "proteinas"
    case fatRemoval = "gordura"
    case fish = "peixes"
    case milk = "leite"
    case milkType = "tipoLeite"
    case friedFood = "frituras"
    case candies = "doces"
    case fatType = "tipoGordura"
    case salt = "sal"
    case meals = "refeicoes"
    case water = "agua"
    case alcohol = "alcool"
    case physicalActivites = "atividadeFisica"
    case nutritionalFacts = "infoNutricional"
}
