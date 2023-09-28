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
        let vc3 = UINavigationController(rootViewController: MenuViewController())
        //let vc4 = UINavigationController(rootViewController: PerfilViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "heart")
        vc3.tabBarItem.image = UIImage(systemName: "gearshape.fill")
        vc3.modalPresentationStyle = .popover
        //vc4.tabBarItem.image = UIImage(systemName: "person.fill")
        let color = UIColor(red: 191.0/255.0, green: 247.0/255.0, blue: 87.0/255.0, alpha: 0.8)
        tabBar.tintColor = color
        tabBar.barTintColor = UIColor(red: 42.0/255.0, green: 43.0/255.0, blue: 41.0/255.0, alpha: 0.5)
        
        setViewControllers([vc1, vc2, vc3], animated: true)
    }
}

class PopupView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 10
        
        // Adicione os elementos (rótulos, botões, etc.) ao popup aqui.
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

