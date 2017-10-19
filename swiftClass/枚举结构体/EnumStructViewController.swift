//
//  EnumStructViewController.swift
//  swiftClass
//
//  Created by lianxiang on 2017/8/18.
//  Copyright © 2017年 lianxiangpro. All rights reserved.
//

import UIKit

class EnumStructViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         self.title = "枚举结构体"
        //使用 enum 来创建一个枚举。就像类和其他所有命名类型一样，枚举可以包含方法。
        //原始值的推断：在Swift中只有Int型的原始值可以推断，其余类型包括Double、String、Character类型都无法在原始值中推断；
        // Do any additional setup after loading the view.
        
        enum Rank:Int {
            
            case Ace = 1
            case Two,three,Four,Five,Six,Seven,Nine,Ten
            
            case Jack,Queen,King
            
            func simpleDescription() -> String {
                
                switch self {
                case .Ace:
                    
                    return "ace"
                case .Jack:
                    
                    return "jack"
                    
                case .Queen:
                    
                return "queen"
                    
                default:
                    return String(self.rawValue)
                }
            }
    
        }
        
        let ace = Rank.Ten
        let aceRawValue = ace.rawValue
        print(ace)
        print(aceRawValue)
        
        enum WeekDays: String{
            
            case Monday = "星期一"
            
            case Tuesday = "星期二"
            
            case Wednesday = "星期三"
            
            case Thursday = "星期四"
            
            case Friday = "星期五"}
        
        let day = WeekDays.Monday
        
        print(day.rawValue + "好！") // 星期一好！
        
        //在这种情况下每个成员值的原始值都必须定义！
        
        
       // 使用 init?(rawValue:) 初始化构造器在原始值和枚举值之间进行转换。
        
        if let convertedRank = Rank(rawValue: 3) {
            
            let threeDescription = convertedRank.simpleDescription()
            let converteRank = Rank.three
            print("原始值\(converteRank)")
            
            print(threeDescription)
            
        }
        
        
        enum Suit {
            case Spades, Hearts, Diamonds, Clubs
            func simpleDescription() -> String {
                                switch self {
                case .Spades:
                    return "Spades"
                case .Hearts:
                    return "Hearts"
                case .Diamonds:
                    return "diamonds"
                case .Clubs:
                    return "clubs"
                }
            } }
        let hearts = Suit.Hearts
        _ = hearts.simpleDescription()
  
    
        //使用 struct 来创建一个结构体。结构体和类有很多相同的地方，比如方法和构造器。它们之间最大的一个区别就 是结构体是传值，类是传引用。
        struct Card {
            var rank:Rank
            var suit:Suit
            func simpleDescription() -> String {
                return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
            }
            
        }
        let threeOfSpades = Card(rank: .three, suit: .Spades)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
        print(threeOfSpadesDescription)
        
        //swith 保持C风格 fallthrough 贯穿执行 default 分支
        let integerToDescription = 5
        
        var desc = "The number \(integerToDescription) is"
        switch integerToDescription {
        case 2,3,5,11,13,17,19:
            desc += "a peime number,and also"
            fallthrough
            
        default:
            desc += " an integer."
            
        }
        
        print(desc)
        
        //提前退出
        
//        像 if 语句一样， guard 的执行取决于一个表达式的布尔值。我们可以使用 guard 语句来要求条件必须为真 时，以执行 guard 语句后的代码。不同于 if 语句，一个 guard 语句总是有一个 else 从句，如果条件不为真则执 行 else 从句中的代码
        
        func greet(person:[String : String]){
            
            guard let name = person["name"] else {
                return
            }
            print("Hello \(name)")
            
            guard let location = person["location"]  else {
                print("I hope the weather is nice near you ")
                return
            }
            
            print("I hope the weather is nice in \(location).")
            
        }
        greet(person: ["name" : "John"])
        
        greet(person: ["name":"lian" ,"location":"上海"])
        //如果 guard 语句的条件被满足，则继续执行 guard 语句大括号后的代码。将变量或者常量的可选绑定作为 语句的条件，都可以保护 guard 语句后面的代码
//        如果条件不被满足，在 else 分支上的代码就会被执行。这个分支必须转移控制以退出 guard 语句出现的代码 段。它可以用控制转移语句如 return , break , continue 或者 throw 做这件事，或者调用一个不返回的方法或函 数，例如 fatalError() 。 
        
        
        //相比于可以实现同样功能的 if 语句，按需使用 guard 语句会提升我们代码的可读性。它可以使你的代码连贯的 被执行而不需要将它包在 else 块中，它可以使你在紧邻条件判断的地方，处理违规的情况。

        
        
        
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
