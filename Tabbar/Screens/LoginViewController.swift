//
//  LoginViewController.swift
//  Tabbar
//
//  Created by Ibrahim Mo Gedami on 4/11/22.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func login(_ sender : UIButton){
        let vc =  TabBarController(nibName: "Tab", bundle: nil)
        vc.selectedIndex = 0
        self.view.window?.rootViewController = vc
        
    }

}
