//
//  HotWordsController.swift
//  App
//
//  Created by Rasul on 13/04/2019.
//

import Vapor

/// Controls basic CRUD operations on `Todo`s.
final class HotWordsController {
    
//    func get(_ req: Request) throws -> Future<[HotWord]> {
//        return HotWord.query(on: req).all()
//    }
    
    func get(_ req: Request) throws -> [HotWord] {
        let hotwords = [
            HotWord(id: 1, title: "Еще один вяк в мою сторону и твой зубной состав тронется", likesCount: 972, didUserLike: false),
            HotWord(id: 2, title: "Да чтоб твоя мама за интернет заплатить забыла!", likesCount: 902, didUserLike: false),
            HotWord(id: 3, title: "Думай о чем-то другом, твои мысли через штаны видно.", likesCount: 777, didUserLike: false),
            HotWord(id: 4, title: "Вам ответить как: вежливо или честно?", likesCount: 703, didUserLike: false),
            HotWord(id: 5, title: "А тебе твой острый язычок эмаль на зубах не царапает?", likesCount: 702, didUserLike: false),
            HotWord(id: 6, title: "Вот мы и доплыли до дна твоего остроумия! - *любой ответ* - А, нет, вот теперь доплыли...", likesCount: 5302, didUserLike: false),
            HotWord(id: 7, title: "Говорите, говорите… я всегда зеваю, когда мне интересно.", likesCount: 673, didUserLike: false),
            HotWord(id: 8, title: "В его глазах читается: семь классов.", likesCount: 43, didUserLike: false),
            HotWord(id: 9, title: "Все комплименты потом и в письменном виде.", likesCount: 32, didUserLike: true)
        ]
        
        return hotwords
    }
}

//{"name" : "ytfytfytf", "id": 12}

import Foundation
struct User : Content {
    let name : String?
    let id : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        case id = "id"
    }
    
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
}
