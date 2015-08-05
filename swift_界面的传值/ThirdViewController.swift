//
//  ThirdViewController.swift
//  swift_界面的传值
//
//  Created by yishu on 15/7/17.
//  Copyright (c) 2015年 mengxiang. All rights reserved.
//

import UIKit
typealias blockPassValue=(string:String)->Void

class ThirdViewController: UIViewController {
    var MyBlock:blockPassValue?
    func BlockValueFunc(blockValue:blockPassValue){
        MyBlock = blockValue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.creatButton()
        // Do any additional setup after loading the view.
    }

    func creatButton(){
        var button:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button.setTitle("返回", forState: UIControlState.Normal)
        button.backgroundColor = UIColor.redColor()
        button.frame = CGRectMake(50, 164, viewWidth-2*50, 50)
        self.view.addSubview(button)
        button.addTarget(self, action: Selector("闭包传值"), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func 闭包传值(){
        if(self.MyBlock != nil){
            self.MyBlock!(string: "闭包传值:456")
        }
        self.dismissViewControllerAnimated(true, completion: nil)
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
