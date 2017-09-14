//
//  Square.swift
//  swiftClass
//
//  Created by lianxiang on 2017/8/16.
//  Copyright © 2017年 lianxiangpro. All rights reserved.
//

import UIKit

class Square: NamedShape {

    var sideLength: Double
    init(sideLength: Double,name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength*sideLength
        
    }
    
    override func simPleDescription() -> String {
        return "A squre with sides of length \(sideLength)"
    }
    
}


