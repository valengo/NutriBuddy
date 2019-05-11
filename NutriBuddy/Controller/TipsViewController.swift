//
//  TipsViewController.swift
//  NutriBuddy
//
//  Created by Andressa Valengo on 10/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import UIKit

class TipsViewController: UIViewController {
    
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var startTestButton: UIButton!
    
    let tips: [Tip] = TipRepository.shared.getAllTips()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipLabel.text = tips.first?.text
        animateTips()
    }
    
    func animateTips() {
        var currentTipIndex = 1
        var currentTipProgress = 0
        var currentTipDuration = 0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {timer in
            if currentTipIndex > self.tips.count - 1 {
                timer.invalidate()
                self.updateButton()
                return
            }
            if currentTipProgress == 0 {
                self.tipLabel.text = self.tips[currentTipIndex].text
                currentTipDuration = self.tips[currentTipIndex].duration(wordsPerMinute: 180)
            }
            currentTipProgress += 1
            if currentTipProgress == currentTipDuration {
                currentTipIndex += 1
                currentTipProgress = 0
            }
        })
    }
    
    func updateButton() {
        startTestButton.backgroundColor = UIColor(red:0.00, green:0.83, blue:0.39, alpha:1.0)
        startTestButton.setTitle("Começar", for: .normal)
    }
}
