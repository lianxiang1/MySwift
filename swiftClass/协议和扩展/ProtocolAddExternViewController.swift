//
//  ProtocolAddExternViewController.swift
//  swiftClass
//
//  Created by lianxiang on 2017/8/19.
//  Copyright © 2017年 lianxiangpro. All rights reserved.
//

import UIKit

//使用 protocol 来声明一个协议。
protocol ExampaleProtocol {
    
    var simpleDecription: String{
        
        get
    }
    mutating func adjust()
    
}

//类、枚举和结构体都可以实现协议。

class SimpleCalss: ExampaleProtocol {
    
    var anotherProperty = 13232
    
    
    func adjust() {
        simpleDecription += " Now 100% adjusted"
    }

    var simpleDecription: String = "测试类"
    
}
//注意声明 SimpleStructure 时候 mutating 关键字用来标记一个会修改结构体的方法。 SimpleClass 的声明不需要 标记任何方法，因为类中的方法通常可以修改类属性(类的性质)。

struct SimpleStructure: ExampaleProtocol{
    
    
    mutating func adjust() {
        
        simpleDecription += "(adjusted)"
        
    }

    var simpleDecription: String="结构体测试"
    
}

 //扩展extern 使用 extension 来为现有的类型添加功能，比如新的方法和计算属性。你可以使用扩展在别处修改定义，甚至是 从外部库或者框架引入的一个类型，使得这个类型遵循某个协议。
extension Int: ExampaleProtocol {
    
    var simpleDecription: String {
        return "The Number \(self)"
    }

    mutating func adjust() {
        
        self += 42
        
    }
    
    
}


class ProtocolAddExternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "协议和扩展"
        // Do any additional setup after loading the view.
        
        let a = SimpleCalss()
        a.adjust()
        let aDesc = a.simpleDecription
        
        print(aDesc)
        
        var b = SimpleStructure()
        b.adjust()
        let bDesc = b.simpleDecription
        print(bDesc)
        
        
        print(7.simpleDecription)
        
        var c = 7
        c.adjust()
        print("7adjust后：\(c.simpleDecription)")
        
    }
   
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
