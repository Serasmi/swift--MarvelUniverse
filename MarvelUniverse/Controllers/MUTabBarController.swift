//
//  MUTabBarController.swift
//  MarvelUniverse
//
//  Created by Sergey Smirnov on 04.09.2021.
//

import UIKit

class MUTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBar.appearance().tintColor = .white
        UITabBar.appearance().unselectedItemTintColor = MUColors.darkRed
        UITabBar.appearance().barTintColor = MUColors.red
        
        viewControllers = [charactersNC, comicsNC, moviesNC, gamesNC]
    }
    
    let charactersNC: UINavigationController = {
        let title = "Characters"
        
        let vc = UIViewController()
        vc.title = title
        vc.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: "person.fill"), tag: 0)
        
        return UINavigationController(rootViewController: vc)
    }()
    
    let comicsNC: UINavigationController = {
        let title = "Comics"
        
        let vc = UIViewController()
        vc.title = title
        vc.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: "doc.richtext.fill"), tag: 1)
        
        return UINavigationController(rootViewController: vc)
    }()
    
    let moviesNC: UINavigationController = {
        let title = "Movies"
        
        let vc = UIViewController()
        vc.title = title
        vc.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: "film.fill"), tag: 2)
        
        return UINavigationController(rootViewController: vc)
    }()
    
    let gamesNC: UINavigationController = {
        let title = "Games"
        
        let vc = UIViewController()
        vc.title = title
        vc.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: "gamecontroller.fill"), tag: 3)
        
        return UINavigationController(rootViewController: vc)
    }()

}
