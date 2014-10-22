//
//  Block.swift
//  swift-tetris
//
//  Created by BLUE on 10/20/14.
//  Copyright (c) 2014 BLUE. All rights reserved.
//

import Foundation
import SpriteKit

// #1
let  NumberOfColors: UInt32 = 6

// #2
enum BlockColor: Int, Printable {
    
// #3
    case Blue = 0, Orange, Purple, Red, Teal, Yellow
    
// #4
    var spriteName: String {
        switch self {
        case .Blue:
            return "blue"
        case .Orange:
            return "orange"
        case .Purple:
            return "purple"
        case .Red:
            return "red"
        case .Teal:
            return "yellow"
        }
    }
    
// #5
    var description: String {
        return self.spriteName
    }
    
// #6
    static func random() -> BlockColor {
        return BlockColor.fromRaw(Int(arc4random_uniform(NumberOfColors)))!
    }
}


// #1
class Block: Hashable, Printable {

// #2
    // constant
    let color: BlockColor
    
// #3
    // properties
    var column: Int
    var row: Int
    var sprite: SKSpriteNode?
    
// #4
    var spriteName: String {
        return color.spriteName
    }
    
// #5
    var hashValue: Int {
        return self.column ^ self.row
    }
    
// #6
    var description: String {
        return "\(color): [\(column), \(row)]"
    }
    
    init(column: Int, row: Int, color: BlockColor) {
        self.column = column
        self.row = row
        self.color = color
    }
}

// #7
func ==(lhs: Block, rhs: Block) -> Bool {
    return lhs.column == rhs.column && lhs.row == rhs.row && lhs.color.toRaw() == rhs.color.toRaw()
}














