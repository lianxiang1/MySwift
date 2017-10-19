//
//  ViewController.swift
//  swiftClass
//
//  Created by lianxiang on 2017/8/16.
//  Copyright © 2017年 lianxiangpro. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    @IBAction func UITest(_ sender: UIButton) {
        
    self.navigationController?.show(UITestViewController(), sender: nil)
    
        
        
        
        
    }
    
    @IBAction func ProgramBtn(_ sender: UIButton) {
        self.navigationController?.show(ProgramTabViewController(), sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        let test = Square(sideLength: 5.5 , name:"testSquare")
        
        print(test.area())
        print( test.simPleDescription())
        
        let cicle = Circle(circleR: 3,name:"circleAqure")
        
        print(cicle.area())
        print(cicle.simPleDescription())
        
        
    
        let triangle = EquilateralTriangle(sideLenth:3.1 ,name:"a triangle")
        print(triangle.perimeter)
        triangle.perimeter = 9.9
        print(triangle.sideLength)
        
        
        let triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
        print(triangleAndSquare.square.sideLength)
        print(triangleAndSquare.triangle.sideLength)
        triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
        print(triangleAndSquare.triangle.sideLength)
        
        //array
        //创建一个带有默认值的数组
        let threeDouble = Array(repeating: 0.0, count: 3)
           // Array(repeatElement(0.9, count: 3))
        print(threeDouble)
        
        var shopList = ["eggs",",milk"]
        
        if shopList.isEmpty {
             print("isEmpty")
            
        }else{
            
             print("not empty")
        }
        shopList.append("apple")
        print(shopList)
        shopList += ["orange","banana"]
        //不可以用下标访问的形式去在数组尾部添加新项。
        print(shopList)
        shopList[0...2] = ["butter","chocolate"]
        print(shopList)
        shopList.insert("pen", at: 0)
        print(shopList)
        shopList.remove(at: 0)
        print(shopList)
        
        //Sets 集合 当 合元素顺序不重要时或者希望确保每个元素只出现一次 时可以使用 合而不是数组。
        var letters = Set<Character>()
        print(letters)
        letters.insert("a")
        print(letters)
        letters = []
        print(letters)
        
        var favorites: Set = ["Rock","Classical","Hip hop"]
        
        if favorites.isEmpty {
            print("this Set isEmpty")
        }else{
            print("this Set is Not Empty")
        }
        
        print(favorites)
        favorites.insert("Jaxs")
        print(favorites)
        favorites.remove("Jaxs")
        print(favorites)
        
        if  favorites.contains("Jaxs") {
            
            print("YES Jaxs")
        }else{
            print("NO Jaxs")
        }
        //Swift 的 Set 类型没有确定的顺序，为了按照特定顺序来遍历一个 Set 中的值可以使用 sorted() 方法，它将返
        //回一个有序数组，这个数组的元素排列顺序由操作符'<'对元素进行比较的结果来确定.
        for genre in favorites.sorted() {
            
            print("\(genre)")
            
        }
        favorites.removeAll()
        print(favorites)
        
        let oddDigits:Set = [1,3,5,7,9]
        let eventDigits:Set = [0,2,4,6,8]
        let singleDigitPrimeNumbers:Set = [2,3,5,7]
        
        let union = oddDigits.union(eventDigits).sorted()
        print(union)
        let intersection = oddDigits.intersection(eventDigits).sorted()
        print(intersection)
        let subtracking = oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
        print(subtracking)
        
        let symmetricDiff = oddDigits.symmetricDifference(singleDigitPrimeNumbers)
        print(symmetricDiff)
        let farmAnimals: Set = ["aa", "bb", "nn", "mm", "ll"]
        let cityAnimals: Set = ["www", "eee"]
        let joint = farmAnimals.isDisjoint(with:cityAnimals)
        print(joint)
        
        //字典字典是一种存储多个相同类型的值的容器。每个值(value)都关联唯一的键(key)，键作为字典中的这个值数 据的标识符。和数组中的数据项不同，字典中的数据项并没有具体顺序。我们在需要通过标识符(键)访问数据 的时候使用字典， [Key: Value] 这样简化的形式去创建一个字典类型。
        //空字典
        var nameOfIntegers = [Int: String]()
        print(nameOfIntegers)
        //字典的实例
        var dic :[Int:String] = [1:"one",2:"Two",3:"Three"]
        print(dic)
        
        var dic2 = ["name":"lian","job":"IOS","commpany":"home"]
        print(dic2)
        
        // 访问字典 语法：var value = dict[key]         
        let value1 = dic[1]
        print(value1 ?? 0)
        
        let value2 = dic2["nae"]
        print(value2 ?? "xiang")
    
        // 添加数据
        let value3 = nameOfIntegers.updateValue("ten", forKey: 10)
        print(value3 ?? "none")
        print(nameOfIntegers)
        
        // 修改字典
        // 方法1 使用 updateValue(forKey:) 增加或更新字典的内容。如果 key 不存在，则添加值，如果存在则修改 key 对应的值。格式为：dict.updateValue(value, forKey:key)方法返回Optional值
        let value4 = nameOfIntegers.updateValue("nine", forKey: 10)
        print(value4 ?? "none")
        print(nameOfIntegers)
        
        //方法2 通过制定的key 来修改字典的值
        var value5 = dic[1]
        print(value5 ?? "")
        value5 = "changed1"//无效
        print(dic)
        dic[1] = "changed1"//有效
        print(dic)
        
        //移除键值对
        // 1 使用 removeValueForKey() 方法来移除字典 key-value 对。如果 key 存在该方法返回移除的值，如果不存在返回 nil 。
        let valueremove = dic.removeValue(forKey: 2)
        print(valueremove ?? "")
        print(dic)
        
        // 2 通过指定键的值为 nil 来移除 key-value（键-值）对。
        dic[3] = nil
        print(dic)
        
        //遍历字典
        //1 for in
        for (ky,vle) in dic2 {
            
            print("字典key\(ky) - 字典value\(vle)")
        }
        
         // 2 使用enumerate()方法来进行字典遍历，返回的是字典的索引及 (key, value) 对  将无顺序的字典返回有序
        for (index,keyValue) in dic2.enumerated() {
             print("字典 index \(index) -  字典 (key, value) 对 \(keyValue)")
        }
        //3 通过key 
        for key in dic2.keys {
            
            let value = dic2[key]
            print("key = \(key),value = \(String(describing: value))")
            
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

