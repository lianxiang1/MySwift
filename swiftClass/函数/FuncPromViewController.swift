//
//  FuncPromViewController.swift
//  swiftClass
//
//  Created by lianxiang on 2017/10/12.
//  Copyright © 2017年 lianxiangpro. All rights reserved.
//

import UIKit

class FuncPromViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      self.title = "函数"
        // Do any additional setup after loading the view.
        //变参函数一个可变参数(variadic parameter)可以接受零个或多个值。函数调用时，你可以用可变参数来指定函数参数 可以被传入不确定数量的输入值。通过在变量类型名后面加入( ... )的方式来定义可变参数。
        
        func arithmeticMean(numbers: Double...) -> Double{
            var total: Double = 0
            for number in numbers {
                total += number
            }
            
            return total / Double(numbers.count)
        
        }
        print(arithmeticMean(numbers: 1,2,3,4))
        //输入输出参数
        
//        函数参数默认是常量。试图在函数体中更改参数值将会导致编译错误(compile-time error)。这意味着你不能错 误地更改参数值。如果你想要一个函数可以修改参数的值，并且想要在这些修改在函数调用结束后仍然存在，那 么就应该把这个参数定义为输入输出参数(In-Out Parameters)。
        //你只能传递变量给输入输出参数。你不能传入常量或者字面量，因为这些量是不能被修改的
        //当传入的参数作为 输入输出参数时，需要在参数名前加 & 符，表示这个值可以被函数修改。
        
        
        
        func swapTwoInts(a: inout Int,b: inout Int){
            let temp = a
            a = b
            b = temp
        
        }
        
        var firstInt = 1
        var secondInt = 2
        swapTwoInts(a: &firstInt, b: &secondInt)
        print(firstInt)
        print(secondInt)
//       多重返回值函数 以用元组(tuple)类型让多个值作为一个复合值从函数中返回。
     
        func minMax(array: [Int]) -> (min: Int,max:Int)?{
            var curentMin = array[0]
            var curentMax = array[0]
            for value in array[1..<array.count] {
                
                if value < curentMin {
                    
                    curentMin = value
                    
                }else if value > curentMax {
                    
                    curentMax = value
                    
                }
            }
            
            return (curentMin,curentMax)
            
        }
        print(minMax(array: [1,2,5,78,77,5]) ?? (0,0))
        //元组的成员值已被命名，因此可以通过 . 语法来检索找到的最小值与最大值:
        let numbers = minMax(array: [1,2,5,78,77,5])
        print(numbers?.max ?? 0)
        
        //闭包表达式语法
//        { (parameters) -> returnType in
//        statements
        
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        //标准写法
        //var reversedNames = names.sorted(by:{(s1:String,s2:String) -> Bool in return s1 > s2})
        //根据上下文推断类型 参数名称缩写 单表达式闭包隐式返回 后
        //let reversedNames = names.sorted(by: { $0 > $1 })
        //$0和$1表示闭包中第一个和第二个 String 类型的参数
        
        //运算符方法 更简单写法
        //let reversedNames = names.sorted(by: >)
        
//        尾随闭包
//        如果你需要将一个很长的闭包表达式作为最后一个参数传递给函数，可以使用尾随闭包来增强函数的可读性。尾
//        随闭包是一个书写在函数括号之后的闭包表达式，函数支持将其作为最后一个参数调用。在使用尾随闭包时，你
//        不用写出它的参数标签:
        
//        上面闭包还可以写为
        let reversedNames = names.sorted(){ $0 > $1 }
        
        print(reversedNames)
        
//        如果闭包表达式是函数或方法的唯一参数，则当你使用尾随闭包时，你甚至可以把 () 省略掉:
//        reversedNames = names.sorted { $0 > $1 }
        
//        通过传递一个尾随闭包给 numbers 数组的 map(_:) 方法来创建对应的字符串版本数组
        
        let digitNames = [0:"Zero",1:"One",2:"Two",3:"Three",4:"Four",5:"Five",6:"Six",7:"Seven",8:"Eight",9:"nine"]
        
        let numBs = [16,58,510]
        let strings = numBs.map{
            (number) -> String in
            var number = number
            var output = ""
            repeat {
            output = digitNames[number % 10]! + output
            number /= 10
                
            } while number>0
            
            return output
        }
        print(strings)
        print(16 % 10)
        
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
