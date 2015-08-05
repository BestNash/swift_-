//
//  FirstViewController.swift
//  swift_界面的传值
//
//  Created by yishu on 15/7/16.
//  Copyright (c) 2015年 mengxiang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var tmpString:NSString = NSString()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.redColor()
        println(tmpString)
        // Do any additional setup after loading the view.
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
