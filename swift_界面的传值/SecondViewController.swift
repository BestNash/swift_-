//
//  SecondViewController.swift
//  swift_界面的传值
//
//  Created by yishu on 15/7/17.
//  Copyright (c) 2015年 mengxiang. All rights reserved.
//

import UIKit
protocol SecondPassValueDelegate:NSObjectProtocol{
    func secondValue(controller:SecondViewController,value:String)
}

class SecondViewController: UIViewController {
    var delegate:SecondPassValueDelegate?
    var textLabel:UITextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.initData()
        self.creatButton()
        // Do any additional setup after loading the view.
    }

    func initData(){
        textLabel = UITextField.alloc()
        textLabel.frame = CGRectMake(50, 164, viewWidth-2*50, 40)
        self.view.addSubview(textLabel)
    }
    
    func creatButton(){
        var button:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button.frame = CGRectMake(50, textLabel.frame.origin.y+40+20, viewWidth-2*50, 40)
        button.setTitle("返回", forState: UIControlState.Normal)
        button.backgroundColor = UIColor.redColor()
        button.addTarget(self, action: Selector("passValueClick:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
    }
    
    func passValueClick(button:UIButton){
        if(self.delegate != nil){
            self.delegate?.secondValue(self, value: "代理传值:123")
            self.dismissViewControllerAnimated(true, completion: nil)
        }else{
            println("没有执行")
        }
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
