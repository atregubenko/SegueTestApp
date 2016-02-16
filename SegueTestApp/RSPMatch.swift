//
//  RSPMatch.swift
//  SegueTestApp
//
//  Created by nnet on 2/16/16.
//  Copyright © 2016 nnet. All rights reserved.
//

import Foundation
struct RPSMatch {
    let p1 : RockScissorsPaperEnum
    let p2 : RockScissorsPaperEnum
    
    init(p1 : RockScissorsPaperEnum, p2 : RockScissorsPaperEnum) {
        self.p1 = p1
        self.p2 = p2
    }
    
    var winner : RockScissorsPaperEnum {
        get {
            return p1.compareValues(p2) ? p1 : p2
        }
    }
    
    var loser : RockScissorsPaperEnum {
        get {
            return p1.compareValues(p2) ? p2 : p1
        }
    }
}
