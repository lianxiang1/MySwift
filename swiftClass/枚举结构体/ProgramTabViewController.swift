//
//  ProgramTabViewController.swift
//  swiftClass
//
//  Created by lianxiang on 2017/8/18.
//  Copyright © 2017年 lianxiangpro. All rights reserved.
//

import UIKit

class ProgramTabViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    let cellReuseIndetifier:String = "ProgramCell"
    var tableView: UITableView!
    var dataArr = ["枚举结构体","协议和扩展","错误处理"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "语法"
        self.addTableVew()
        // Do any additional setup after loading the view.
    }
    
    func addTableVew(){
        self.tableView = UITableView(frame: self.view.bounds)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView()
        //代码方式
        //self.tableView.register( ProgramCell.self , forCellReuseIdentifier: self.cellReuseIndetifier)
        //xib nib方式
//        let nib = UINib(nibName:"ProgramCell",bundle:nil)
//        
//        self.tableView.register(nib, forCellReuseIdentifier: self.cellReuseIndetifier)
        self.view.addSubview(self.tableView)
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:ProgramCell? = tableView.dequeueReusableCell(withIdentifier: self.cellReuseIndetifier) as?ProgramCell
        if cell==nil {
            //nib 代码
//            cell = ProgramCell(style: .default,reuseIdentifier:self.cellReuseIndetifier)
            //main bundle
            
        
            cell = Bundle.main .loadNibNamed("ProgramCell", owner: self, options: nil)?.last as? ProgramCell
            
            
        }
        
        cell?.paramTiltle.text = self.dataArr[indexPath.row]
        return cell!
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row==0 {
            self.navigationController?.show(EnumStructViewController(), sender: nil)
            
        }else if indexPath.row==1 {
            self.navigationController?.show(ProtocolAddExternViewController(), sender: nil)
            
        }else if indexPath.row==2 {
            
            self.navigationController?.show(EerrorViewController(), sender: nil)
            
        }
        
        
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
