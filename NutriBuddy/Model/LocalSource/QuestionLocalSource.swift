//
//  QuestionLocalSource.swift
//  NutriBuddy
//
//  Created by Andressa Valengo on 11/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import Foundation

final class QuestionLocalSource {
    
    var questions: [Question] = [
        Question(group: QuestionGroup.fruits,
                 text: "Qual é, em média, a quantidade de frutas (unidade/ fatia/pedaço/copo de suco natural) que você come por dia?",
                 answers: ["zero", "três ou mais", "duas", "uma"],
                 points: [0, 3, 2, 1],
                 warning: nil,
                 examples: nil,
                 tooltips: ["quantidade": "Pode ser unidade, fatia, pedaço ou copo de suco natural"]),
        Question(group: QuestionGroup.vegetables,
                 text: "Quantas colheres de sopa, em média, de legumes e verduras que você come por dia?",
                 answers: ["zero", "três ou menos", "quatro a cinco", "seis a sete", "oito ou mais"],
                 points: [0, 1, 2, 3, 4],
                 warning: "Atenção! Não considere nesse grupo os tubérculos e as raízes!",
                 examples: nil,
                 tooltips: ["quantidade": "Considere colheres de sopa",
                            "tubérculos e as raízes": "Por exemplo: batatas"]),
        Question(group: QuestionGroup.grains,
                 text: "Qual é, em média, a quantidade que você come dos seguintes alimentos: feijão de qualquer tipo ou cor, lentilha, ervilha, grão-de-bico, soja, fava, sementes ou castanhas?",
                 answers: ["zero", "duas ou mais colheres de sopa por dia", "menos de cinco vezes por semana", "uma colher de sopa ou menos por dia"],
                 points: [0, 3, 1, 2],
                 warning: nil,
                 examples: nil,
                 tooltips: nil),
        Question(group: QuestionGroup.cho,
                 text: "Quantas colheres de sopa, em média, você consome por dia dos seguintes alimentos: arroz, milho e outros cereais (inclusive os matinais); mandioca/macaxeira/aipim, cará ou inhame;  macarrão e outras massas; batata-inglesa, batata-doce, batata-baroa ou mandioquinha",
                 answers: ["colheres de sopa"],
                 points: nil,
                 warning: nil,
                 examples: [
                        Example(imageName: "cereais", description: "Arroz, milho e outros cereais (inclusive os matinais)"),
                        Example(imageName: "mandioca", description: "Mandioca/macaxeira/aipim, cará ou inhame"),
                        Example(imageName: "massas", description: "Macarrão e outras massas"),
                        Example(imageName: "batatas", description: "Batata-inglesa, batata-doce, batata-baroa ou mandioquinha")
                ], tooltips: nil),
        Question(group: QuestionGroup.cho,
                 text: "Quantas fatias ou unidades, em média, de pães você consome por dia?", answers: ["unidades/fatias"], points: nil, warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.cho,
                 text: "Quantas fatias, em média, de bolos sem cobertura e/ou recheio que você consome por dia?", answers: ["fatias"], points: nil, warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.cho,
                 text: "Quantas unidades, em média, de biscoito ou bolacha sem recheio você consome por dia?", answers: ["unidades"], points: nil, warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.protein,
                 text: "Qual é, em média, a quantidade (pedaço/fatia/colher de sopa) de carnes (gado, porco, aves, peixes e outras) ou ovos que você come por dia?",
                 answers: ["zero", "um", "dois", "mais de dois"],
                 points: [1, 2, 3, 0], warning: nil, examples: nil,
                 tooltips: ["quantidade": "Pode ser unidade (ovo), fatia, pedaço ou colher de sopa"]),
        Question(group: QuestionGroup.fatRemoval,
                 text: "Você costuma tirar a gordura aparente das carnes, a pele do frango ou outro tipo de ave?",
                 answers: ["sim", "não", "não como carne vermelha ou frango"],
                 points: [3, 0, 2], warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.fish,
                 text: "Você costuma comer peixes com qual frequência?",
                 answers: ["não consumo", "algumas vezes ao ano", "duas ou mais vezes por semana", "de uma a qutro vezes por mês"],
                 points: [0, 1, 3, 2], warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.milk,
                 text: "Qual é, em média, a quantidade (copos/pedaços/fatias/porções) de leite e seus derivados (iogurtes, bebidas lácteas, coalhada, requeijão, queijos e outros) que você come por dia?",
                 answers: ["não consumo leite e seus derivados", "três ou mais", "dois", "um ou menos"],
                 points: [0, 3, 2, 1],
                 warning: nil,
                 examples: [
                    Example(imageName: "iogurte", description: "Iogurtes"),
                    Example(imageName: "bebidas", description: "Bebidas lácteas"),
                    Example(imageName: "requeijao", description: "Requeijão"),
                    Example(imageName: "queijos", description: "Queijos"),
                    Example(imageName: "outros", description: "Outros derivados")
                ],
                 tooltips: ["quantidade": "Pense na quantidade usual que você consome: pedaço, fatia ou porções em colheres de sopa ou copo grande (tamanho do copo de requeijão) ou xícara grande, quando for o caso."]),
        Question(group: QuestionGroup.milkType,
                 text: "Que tipo de leite e seus derivados você habitualmente consome?",
                 answers: ["não consumo", "integral", "semidesnatado, desnatado ou light"],
                 points: [0, 1, 3], warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.friedFood,
                 text: "Pense nos seguintes alimentos: frituras, salgadinhos fritos ou em pacotes, carnes salgadas, hambúrgueres, presuntos e embutidos (salsicha, mortadela, salame, lingüiça e outros). Você costuma comer qualquer um deles com que frequência?",
                 answers: ["raramente ou nunca", "todos os dias", "de duas a três vezes por semana", "de quatro a cinco vezes por semana", "menos que duas vezes por semana"],
                 points: [4, 0, 2, 1, 3],
                 warning: nil,
                 examples: [
                    Example(imageName: "salgadinhos", description: "Frituras, salgadinhos fritos ou em pacotes"),
                    Example(imageName: "hamburgueres", description: "Carnes salgadas e hambúrgueres"),
                    Example(imageName: "embutidos", description: "Presuntos, salsicha, mortadela, salame, linguiça e outros")
                ], tooltips: nil),
        Question(group: QuestionGroup.candies,
                 text: "Pense nos seguintes alimentos: doces de qualquer tipo, bolos recheados com cobertura, biscoitos doces, refrigerantes e sucos industrializados. Você costuma comer qualquer um deles com que frequência?",
                 answers: ["raramente ou nunca", "menos que duas vezes por semana", "de duas a três vezes por semana", "de quatro a cinco vezes por semana", "todos os dias"],
                 points: [4, 3, 2, 1, 0],
                 warning: nil,
                 examples: [
                    Example(imageName: "doces", description: "Doces de qualquer tipo"),
                    Example(imageName: "bolos", description: "Bolos rechados com cobertura"),
                    Example(imageName: "biscoitos", description: "Biscoitos doces"),
                    Example(imageName: "bebidas", description: "Refrigerantes e sucos industrializados")
                ], tooltips: nil),
        Question(group: QuestionGroup.fatType,
                 text: "Qual tipo de gordura é mais usado na sua casa para cozinhar os alimentos?",
                 answers: ["banha animal ou manteiga", "Óleo vegetal como: soja, girassol, milho, algodão ou canola", "margarina ou gordura vegetal"],
                 points: [0, 3, 0], warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.salt,
                 text: "Você costuma colocar mais sal nos alimentos quando já servidos em seu prato?",
                 answers: ["sim", "não"],
                 points: [0, 3], warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.meals,
                 text: "Você costuma tomar café da manhã?", answers: ["sim", "não"],
                 points: nil, warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.meals,
                 text: "Você costuma fazer um lanche da manhã?", answers: ["sim", "não"],
                 points: nil, warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.meals,
                 text: "Você costuma almoçar?", answers: ["sim", "não"],
                 points: nil, warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.meals,
                 text: "Você costuma tomar café ou fazer lanche da tarde?", answers: ["sim", "não"],
                 points: nil, warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.meals,
                 text: "Você costuma jantar ou fazer um lanche à noite?", answers: ["sim", "não"],
                 points: nil, warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.meals,
                 text: "Você costuma fazer um lanche antes de dormir?", answers: ["sim", "não"],
                 points: nil, warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.water,
                 text: "Quantos copos de água você bebe por dia? Inclua no seu cálculo sucos de frutas naturais ou chás (exceto café, chá preto e chá mate).",
                 answers: ["menos de quatro copos", "oito copos ou mais", "quatro a cinco copos", "seis a oito copos"],
                 points: [0, 3, 1, 2], warning: nil, examples: nil, tooltips: nil),
        Question(group: QuestionGroup.alcohol,
                 text: "Com qual frequência você costuma consumir bebidas alcoólicas?",
                 answers: ["diariamente", "uma a seis vezes na semana", "menos de quatro vezes ao mês", "não consumo"],
                 points: [0, 1, 2, 3], warning: nil,
                examples: [
                    Example(imageName: "uisque", description: "Uísque"),
                    Example(imageName: "cachaca", description: "Cachaça"),
                    Example(imageName: "vinho", description: "Vinho"),
                    Example(imageName: "cerveja", description: "Cerveja"),
                    Example(imageName: "conhaque", description: "Conhaque"),
                    Example(imageName: "drinks", description: "Drinks e outros")
                ], tooltips: nil),
        Question(group: QuestionGroup.physicalActivites,
                 text: "Você faz atividade física REGULAR, isto é, pelo menos 30 minutos por dia, todos os dias da semana, durante o seu tempo livre?",
                 answers: ["não", "sim", "duas a quatro vezes por semana"],
                 points: [0, 3, 2], warning: "Os 30 minutos podem ser divididos em 3 etapas de 10 minutos.",
                 examples: [
                    Example(imageName: "deslocamento", description: "Deslocamento a pé ou bicicleta para o trabalho"),
                    Example(imageName: "escadas", description: "Subir escadas"),
                    Example(imageName: "atividades", description: "Atividades domésticas"),
                    Example(imageName: "lazer", description: "Atividades de lazer ativo"),
                    Example(imageName: "academia", description: "Atividades praticadas em academias e clubes")
                ], tooltips: nil),
        Question(group: QuestionGroup.nutritionalFacts,
                 text: "Você costuma ler a informação nutricional que está presente no rótulo de alimentos industrializados antes de comprá-los?",
                 answers: ["nunca", "quase nunca", "algumas vezes, para alguns produtos", "sempre ou quase sempre, para todos os produtos"],
                 points: [0, 1, 2, 3], warning: nil, examples: nil, tooltips: nil)
    ]
    
    func getAll() -> [Question] {
        return questions
    }
    
    func getQuestionAtIndex(_ index: Int) -> Question? {
        if index > questions.count - 1 {
            return nil
        }
        return questions[index]
    }
}
