//
//  ViewController.swift
//  someSwiftDemo
//
//  Created by xiaoming on 16/6/26.
//  Copyright © 2016年 GoodJob. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        let v = UIView(CGRect)
        
        let v = UIView(frame:CGRect(x:0, y: 20, width: 100, height: 100));
        
        v.backgroundColor = #colorLiteral(red: 0.4931360483, green: 0, blue: 0.1765155345, alpha: 1)
        
//        view.addSubview(v);
//        demo1()
        
       //循环
//        demo2()
//        demo3()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 50
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        
        cell.backgroundColor = #colorLiteral(red: 0.8949507475, green: 0.1438436359, blue: 0.08480125666, alpha: 1)
        collectionView.backgroundColor = #colorLiteral(red: 0.1991284192, green: 0.6028449535, blue: 0.9592232704, alpha: 1)
        
        
        return cell
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
    }
   
    
    func demo2() {
        var sum = 0
        
        //半开半闭区间 [0,10)
        for i in 0..<10 {
            sum += i
        }
        print(sum)
        
        //闭区间 [0,10]
        for i in 0...10 {
            sum += i
        }
        
        //_匹配任意类型
        for _ in 0...10 {
            print("hello")
        }
        
//        print(sum);
        
        //遍历字符串
        let str = "hello world"
        
        for c in str.characters {
            print(c);
        }
        
        let str1 = "hello world 你好世界"
        //字符串字节数
        print(str1.lengthOfBytes(using: .utf8))
        //字符串字符个数
        print(str1.characters.count)
        
        
    }
    
    
    func demo1() {
        //        var oName: String? = "张三"
        //        var oAge: Int? = 18
        //
        ////        if let name = oName, age = oAge {
        ////            print(name + String(age))
        ////        }
        //        let cName = oName ?? "abc"
        //
        //        var dName: String
        //
        //        if oName == nil {
        //            dName = "abc"
        //        } else {
        //            dName = oName!
        //        }
        
        var dataList: [String]?
        
        dataList = ["zhangsan", "lisi"];
        
        let count = dataList?.count ?? 0
        
        print(count)
    }
    
    func demo(){
        print("哈哈")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


