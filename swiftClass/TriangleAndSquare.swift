//
//  TriangleAndSquare.swift
//  swiftClass
//
//  Created by lianxiang on 2017/8/17.
//  Copyright © 2017年 lianxiangpro. All rights reserved.
//

import UIKit

class TriangleAndSquare {

    var triangle: EquilateralTriangle{
        
        willSet {
            
            square.sideLength = newValue.sideLength
            
        }

    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLenth: size, name: name)
    }
}
