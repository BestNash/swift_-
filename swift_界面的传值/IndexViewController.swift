//
//  IndexViewController.swift
//  swift_界面的传值
//
//  Created by yishu on 15/7/16.
//  Copyright (c) 2015年 mengxiang. All rights reserved.
//

import UIKit
let viewWidth = UIScreen.mainScreen().bounds.size.width
let viewHight = UIScreen.mainScreen().bounds.size.height

class IndexViewController: UIViewController,SecondPassValueDelegate {
    var tmpString:NSString = NSString()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.orangeColor()
        self.initData()
        // Do any additional setup after loading the view.
    }

    //初始化
    func initData(){
      
        var button:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button.frame = CGRectMake(50,164 , viewWidth-2*50, 80)
        button.backgroundColor = UIColor.redColor()
        button.setTitle("正向传值", forState: UIControlState.Normal)
        button.addTarget(self, action: Selector("passValue1:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
        var button1:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button1.frame = CGRectMake(50, button.frame.origin.y+80+20, viewWidth-2*50, 80)
        button1.backgroundColor = UIColor.purpleColor()
        button1.setTitle("反向传值_1", forState: UIControlState.Normal)
        button1.addTarget(self, action: Selector("passValueDelegate:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button1)
        
        var button2:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button2.frame = CGRectMake(50, button1.frame.origin.y+100, viewWidth-2*50, 80)
        
        button2.setTitle("反向传值_闭包", forState: UIControlState.Normal)
        button2.backgroundColor = UIColor.blueColor()
        button2.addTarget(self, action: Selector("blockClick真的:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button2)
    }
    
    func passValue1(button:UIButton){
       NSLog("正向传值")
        self.tmpString = "第一个界面的值正向传值"
        var First:FirstViewController = FirstViewController()
        First.tmpString = self.tmpString
        
        let Navc:UINavigationController = UINavigationController(rootViewController: First)
        self.presentViewController(Navc, animated: true, completion: nil)
    }
    
    func passValueDelegate(button:UIButton){

        NSLog("反向传值_1_代理")
        let secondVC = SecondViewController()
        secondVC.delegate = self;
        self.presentViewController(secondVC, animated: true, completion: nil)
        
    }
    //代理实现方法
    func secondValue(controller: SecondViewController, value: String) {
        println(value)
    }
    
    func blockClick真的(button:UIButton){
        println("block按钮点击")
        let blockVC = ThirdViewController()
        blockVC.BlockValueFunc(ThirdBlock)
        self.presentViewController(blockVC, animated: true, completion: nil)
    }
    
    func ThirdBlock(string:String)->Void{
        println(string)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    
    
    
    
}
