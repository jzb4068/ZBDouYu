//
//  MainViewController.swift
//  ZBDouYu
//
//  Created by 清科 on 2017/6/9.
//  Copyright © 2017年 清科. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVC(storyboardName: "Home")
        addChildVC(storyboardName: "Live")
        addChildVC(storyboardName: "Follow")
        addChildVC(storyboardName: "Profile")
        // Do any additional setup after loading the view.
    }
    
    private func addChildVC(storyboardName : NSString){
        //通过stotyboard获取控制器
        let childVC = UIStoryboard(name:storyboardName as String , bundle: nil).instantiateInitialViewController()!
        //将 childVC 作为子控制器
        addChildViewController(childVC)
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
