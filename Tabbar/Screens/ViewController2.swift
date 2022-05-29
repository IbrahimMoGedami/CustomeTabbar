//
//  ViewController2.swift
//  Tabbar
//
//  Created by Ibrahim Mo Gedami on 4/11/22.
//

import UIKit

protocol ShowHideTabBar : AnyObject {
    func showHideTabbar()
}

class ViewController2: UIViewController {

    weak var delegate : ShowHideTabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.layer.zPosition = -1
    }


    @IBAction func back(_ sender : UIButton){
//        let vc =  TabBarController(nibName: "Tab", bundle: nil)
//        vc.selectedIndex = 0
//        self.view.window?.rootViewController = vc
        delegate.showHideTabbar()
        navigationController?.popViewController(animated: true)
    }
}

