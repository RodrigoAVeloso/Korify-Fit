//
//  MainTabBarViewController.swift
//  Korify-fit-app
//
//  Created by Rodrigo Assunção Veloso on 22/02/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: FeedViewController())
        let vc2 = UINavigationController(rootViewController: TelaInicialViewController())
        //let vc3 = UINavigationController(rootViewController: ToMeetViewController())
        //let vc4 = UINavigationController(rootViewController: PerfilViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "heart")
        //vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        //vc4.tabBarItem.image = UIImage(systemName: "person.fill")
        let color = UIColor(red: 191.0/255.0, green: 247.0/255.0, blue: 87.0/255.0, alpha: 0.8)
        tabBar.tintColor = color
        tabBar.barTintColor = UIColor(red: 41.0/255.0, green: 43.0/255.0, blue: 41.0/255.0, alpha: 0.5)
        
        setViewControllers([vc1, vc2], animated: true)
    }
}
