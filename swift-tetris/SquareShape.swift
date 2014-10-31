//
//  SquareShape.swift
//  swift-tetris
//
//  Created by BLUE on 10/22/14.
//  Copyright (c) 2014 BLUE. All rights reserved.
//

import Foundation

class SquareShape: Shape {
    /*
// #1
        | 0'| 1 |
        | 2 | 3 |
    
    ' marks the row/column indicator for the shape
    
    */
    
    // the square shape will not rotate
    
// #2
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero:       [(0,0), (1,0), (0,1), (1,1)],
            Orientation.OneEighty:  [(0,0), (1,0), (0,1), (1,1)],
            Orientation.Ninety:     [(0,0), (1,0), (0,1), (1,1)],
            Orientation.TwoSeventy: [(0,0), (1,0), (0,1), (1,1)]
        ]
    }
    
// #3
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:       [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty:  [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety:     [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}
