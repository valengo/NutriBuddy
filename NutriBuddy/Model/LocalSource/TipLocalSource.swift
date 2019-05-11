//
//  TipLocalSource.swift
//  NutriBuddy
//
//  Created by Andressa Valengo on 10/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import Foundation

final class TipLocalSource {
    var tips: [Tip] = [
        Tip(text: "Antes de você começar..."),
        Tip(text: "preciso te dar algumas dicas!"),
        Tip(text: "Este teste foi criado para pessoas entre 20 e 60 anos de idade."),
        Tip(text: "Se você achar que mais de uma resposta está certa, escolha a que você mais costuma fazer quando come."),
        Tip(text: "Lembre-se:"),
        Tip(text: "Responda o que você realmente come, e não o que gostaria ou acha que seria melhor."),
        Tip(text: "Se você tiver alguma dificuldade para responder, peça ajuda a alguém próximo da família, amigo ou vizinho."),
        Tip(text: "Escolha só UMA resposta."),
        Tip(text: "Vamos começar?!")
    ]
    
    func getAll() -> [Tip] {
        return tips
    }
}
