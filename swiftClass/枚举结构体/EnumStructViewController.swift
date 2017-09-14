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
