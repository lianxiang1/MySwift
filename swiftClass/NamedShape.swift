//
//  NamedShape.swift
//  swiftClass
//
//  Created by lianxiang on 2017/8/16.
//  Copyright © 2017年 lianxiangpro. All rights reserved.
//

import UIKit

class NamedShape: NSObject {
 
    //注意 self 被用来区别实例变量。当你创建实例的时候，像传入函数参数一样给类传入构造器的参数。每个属性都 需要赋值——无论是通过声明(就像 numberOfSides )还是通过构造器(就像 name )。
    var numberOfSides:Int = 0
    
    var name:String
    init(name: String) {
        self.name = name
    }
    
    func simPleDescription() -> String {
        
        return "A shape whith\(numberOfSides) sides"
    }
    
}
