//
//  TabBarController.swift
//  Tabbar
//
//  Created by Ibrahim Mo Gedami on 4/11/22.
//

import UIKit

final class TabBarController: CardTabBarController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        setupUI()
    }

    // MARK: - UI
    private func setupUI() {
//        tabBar.tintColor = .TabBar.title
//        tabBar.backgroundColor = .background
//        tabBar.barTintColor = .Navigation.background
//        tabBar.indicatorColor = .TabBar.itemBackground
        tabBar.tintColor = UIColor.black //.TabBar.title
        tabBar.backgroundColor = UIColor.green//UIColor(hexString: "#0B011C")
        tabBar.barTintColor = .black
        tabBar.indicatorColor = UIColor(named: "newColor")//.TabBar.itemBackground
    }
    
    private func setupViewController() {
        viewControllers = [homeTab ,bookTab, editTab, notificationTab]
    }

    // MARK: - TabItems
    lazy var homeTab: UIViewController = {
        let homeTabItem = UITabBarItem(title: "Home", image: UIImage(named: "ic_home"), selectedImage: nil)
        let vc = ListViewController()
        let homeNavTab = UINavigationController(rootViewController: vc)
        homeNavTab.tabBarItem = homeTabItem
        return homeNavTab
    }()

    lazy var bookTab: UIViewController = {
        let searchTabItem = UITabBarItem(title: "Search", image: UIImage(named: "ic_search"), selectedImage: nil)
        let navController = UINavigationController(rootViewController: LabelViewController(title: "Search"))
        navController.tabBarItem = searchTabItem
        return navController
    }()

    lazy var editTab: UIViewController = {
        let randomTabItem = UITabBarItem(title: "Profile", image: UIImage(named: "ic_profile"), selectedImage: nil)
        let navController = UINavigationController(rootViewController: LabelViewController(title: "Profile"))
        navController.tabBarItem = randomTabItem
        return navController
    }()

    lazy var notificationTab: UIViewController = {
        let commentTabItem = UITabBarItem(title: "Notice", image: UIImage(named: "ic_notifi"), selectedImage: nil)
        let navController = UINavigationController(rootViewController: LabelViewController(title: "Notice"))
        navController.tabBarItem = commentTabItem
        return navController
    }()

    lazy var moreTab: UIViewController = {
        let commentTabItem = UITabBarItem(title: "More", image: UIImage(named: "ic_settings"), selectedImage: nil)
        let navController = UINavigationController(rootViewController: LabelViewController(title: "More"))
        navController.tabBarItem = commentTabItem
        return navController
    }()
}


