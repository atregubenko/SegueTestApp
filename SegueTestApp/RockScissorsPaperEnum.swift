//
//  RockScissorsPaperEnum.swift
//  SegueTestApp
//
//  Created by nnet on 2/16/16.
//  Copyright © 2016 nnet. All rights reserved.
//

import Foundation
enum RockScissorsPaperEnum {
    case Paper, Scissors, Rock
    
    init() {
        switch arc4random() % 3 {
        case 0:
            self = .Paper
        case 1:
            self = .Rock
        default:
            self = .Scissors
        }
    }
    
    func compareValues(anotherValue : RockScissorsPaperEnum) -> Bool {
        switch (self, anotherValue) {
        case (.Rock, .Scissors), (.Paper, .Rock), (.Scissors, .Paper):
            return true
        default :
            return false
        }
    }
}

extension RockScissorsPaperEnum {
    var stringValue : String {
        switch self {
        case .Rock:
            return "Rock"
        case .Paper:
            return "Paper"
        default :
            return "Scissors"
        }
    }
}
