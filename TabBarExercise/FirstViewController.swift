//
//  FirstViewController.swift
//  TabBarExercise
//
//  Created by 川崎 隆介 on 2015/12/09.
//  Copyright (c) 2015年 川崎 隆介. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var count = 0
    
    @IBAction func pushPlusButton(_ sender: AnyObject) {
        count += 1
        self.tabBarItem.badgeValue = String(count)
    }
    
    @IBAction func pushMinusButton(_ sender: AnyObject) {
        if count > 0 {
            count -= 1
        }
        self.tabBarItem.badgeValue = String(count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tabBarItem.badgeValue = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

