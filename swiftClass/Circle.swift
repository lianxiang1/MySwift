//
//  Circle.swift
//  swiftClass
//
//  Created by lianxiang on 2017/8/16.
//  Copyright © 2017年 lianxiangpro. All rights reserved.
//

import UIKit

class Circle: NamedShape {

    var circleR: Double
    
    init(circleR: Double,name: String) {
        self.circleR = circleR
        super.init(name: name)
        
    }
    
    func area() -> Double {
        
        return  pow(circleR,2)*Double.pi
        
    }
    override func simPleDescription() -> String {
        return "A circle with R length\(circleR)"
    }
    
}
