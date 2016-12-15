//
//  SecondViewController.swift
//  TabBarExercise
//
//  Created by 川崎 隆介 on 2015/12/09.
//  Copyright (c) 2015年 川崎 隆介. All rights reserved.
//

import UIKit
/*
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}
*/


class SecondViewController: UITableViewController {

    var array:[Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        if let window = UIApplication.shared.keyWindow {
            let tabController = window.rootViewController as! UITabBarController
            if let controller = tabController.viewControllers {
                if let numStr = (controller[0] ).tabBarItem.badgeValue {
                    self.array.removeAll(keepingCapacity: false)
                    //for var i = 0 ; i < num.toInt() ; i += 1 {
                    //    self.array += [i]
                    //}
                    if let num = Int(numStr) {
                        for i in 0 ..< num {
                            self.array += [i]
                        }
                    }
                }
                
            }
        }
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell", for:indexPath)
        cell.textLabel?.text = String(self.array[indexPath.row])
        return cell;
    }

}

