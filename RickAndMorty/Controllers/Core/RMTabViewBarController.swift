//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Piyush Singh on 19/01/23.
//

import UIKit

/// Controller to house tabs and root tab controller
final class RMTabViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setUpTabs()
    }
    
    
    private func setUpTabs() {
        let charactersVC = RMCharactersViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3 )
        
        setViewControllers( [nav1, nav2, nav3] , animated: true)
        
    }
    
}
