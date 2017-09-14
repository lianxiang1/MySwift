//
//  EquilateralTriangle.swift
//  swiftClass
//
//  Created by lianxiang on 2017/8/17.
//  Copyright © 2017年 lianxiangpro. All rights reserved.
//

import UIKit

class EquilateralTriangle: NamedShape {

    var sideLength: Double = 0.0
    init(sideLenth: Double,name: String) {
        
        self.sideLength = sideLenth;
        super.init(name: name)
        numberOfSides = 3
        
    }
    var perimeter: Double{
        
        get {
            
            return  3.0 * sideLength
            
        }
        set {
            
            sideLength = newValue/3.0
            
        }
        
        
    }
    
    override func simPleDescription() -> String {
        
        return "An equilateral triagle with sides of length \(sideLength)."
    }
    
    
    
}
