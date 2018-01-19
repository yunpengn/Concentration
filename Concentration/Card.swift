//
//  Card.swift
//  Concentration
//
//  Created by Yunpeng Niu on 19/01/18.
//  Copyright © 2018年 Yunpeng Niu. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    let identifier: Int

    static var identifierFactory = 0

    init() {
        self.identifier = Card.getUniqueIdentifer()
    }

    static func getUniqueIdentifer() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
}
