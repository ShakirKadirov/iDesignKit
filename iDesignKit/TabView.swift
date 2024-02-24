//
//  TabView.swift
//  iDesignKit
//
//  Created by Shakir Kadirov on 24.02.2024.
//

import UIKit

class TabView: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .systemGray4
        let homeVC = HomeViewController()
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.tabBarItem.title = "Home"
        let newsVC = NewsViewController()
        newsVC.tabBarItem.image = UIImage(systemName: "newspaper")
        newsVC.tabBarItem.title = "News"
        let profileVC = UINavigationController(rootViewController: ProfileViewController())
        profileVC.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        profileVC.tabBarItem.title = "Profile"
        
        self.viewControllers = [homeVC, newsVC, profileVC]
    }
}
