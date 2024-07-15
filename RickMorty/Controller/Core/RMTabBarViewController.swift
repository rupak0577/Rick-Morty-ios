//
//  ViewController.swift
//  RickMorty
//
//  Created by Rupak Das on 14/07/2024.
//

import UIKit

final class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }

    private func setUpTabs() {
        let charVC = RMCharViewController()
        let locVC = RMLocationViewController()
        let epiVC = RMEpisodeViewController()
        let settVC = RMSettingsViewController()
        
        charVC.navigationItem.largeTitleDisplayMode = .automatic
        locVC.navigationItem.largeTitleDisplayMode = .automatic
        epiVC.navigationItem.largeTitleDisplayMode = .automatic
        settVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: charVC)
        let nav2 = UINavigationController(rootViewController: locVC)
        let nav3 = UINavigationController(rootViewController: epiVC)
        let nav4 = UINavigationController(rootViewController: settVC)
        
        nav1.tabBarItem = UITabBarItem(
            title: "Character",
            image: UIImage(systemName: "person"),
            tag: 1
        )
        nav2.tabBarItem = UITabBarItem(
            title: "Locations",
            image: UIImage(systemName: "globe"),
            tag: 1
        )
        nav3.tabBarItem = UITabBarItem(
            title: "Episodes",
            image: UIImage(systemName: "tv"),
            tag: 1
        )
        nav4.tabBarItem = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "gear"),
            tag: 1
        )
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
}

