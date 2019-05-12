//
//  ResultViewController.swift
//  NutriBuddy
//
//  Created by Andressa Valengo on 12/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let totalPoints = QuestionRepository.shared.getTotalPoints()
        
        if totalPoints < 28 {
            resultText.text = "Você precisa tornar sua alimentação e seus hábitos de vida mais saudáveis!Dê mais atenção à alimentação e atividade física."
            
        } else if totalPoints >= 29 && totalPoints <= 42 {
            resultText.text = "Fique atento com sua alimentação e outros hábitos como atividade física e consumo de líquidos."
        } else {
            resultText.text = "Parabéns! Você está no caminho para o modo de vida saudável."
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
