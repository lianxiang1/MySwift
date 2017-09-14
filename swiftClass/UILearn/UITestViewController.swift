//
//  UITestViewController.swift
//  swiftClass
//
//  Created by lianxiang on 2017/8/22.
//  Copyright © 2017年 lianxiangpro. All rights reserved.
//

import UIKit

class UITestViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.title = "UI"
        let namebutton:UIButton = UIButton(type:.contactAdd)
        namebutton.frame = CGRect(x:10,y:70,width:200,height:30)
        namebutton.setTitle("按钮", for:.normal)
        self.view .addSubview(namebutton)
        //对于Custom定制类型按钮，代码可简化为
        let button = UIButton(frame:CGRect(x:10,y:110,width:200,height:30))
        button.setTitle("custombtn", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        //按钮文字阴影颜色的设置
        button.setTitleShadowColor(UIColor.gray, for: .normal)
        button.backgroundColor = UIColor.purple
//        button.setImage(UIImage(named:"timg.jpg"), for: .normal)
//        button.imageEdgeInsets = UIEdgeInsetsMake(0,0, 0, 100)
        
        button.adjustsImageWhenHighlighted=false //使触摸模式下按钮也不会变暗（半透明）
    button.setBackgroundImage(UIImage(named:"5E91297C2CFDF32F0FF8065266CB1266.jpg"), for: .normal)
        button.addTarget(self, action:#selector(btnTap), for: .touchUpInside)
        
        self.view.addSubview(button)
        
        //http://www.hangge.com/blog/cache/detail_528.html
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func btnTap(_ button:UIButton){
        
        print(button.title(for: .normal) ?? "custom")
        
    
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
