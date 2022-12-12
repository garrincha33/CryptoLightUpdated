//
//  MainTabBarController.swift
//  CryptoLightUpdated
//
//  Created by Richard Price on 12/12/2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    //Creating a function to generate the our navcontrollers
    private func generateNavControllers(with rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        rootViewController.title = title
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController
    }
    //wrap in a private setup func to call in ViewDidLoad
    private func setupTabBar() {
        viewControllers = [
            generateNavControllers(with: UIViewController(), title: "News", image: UIImage(named: "cryptoNews")!),
            generateNavControllers(with: UIViewController(), title: "Prices", image: UIImage(named: "prices_new")!)
        ]
        //MARK:- customise's the position of the icons on the tabbar
        guard let items = tabBar.items else { return }
        for item in items {
            item.title = ""
            item.imageInsets = UIEdgeInsets(top: 2, left: 0, bottom: -2, right: 0)
        }
        //MARK:- tabBar customisation
        tabBar.tintColor = UIColor.rgb(red: 51, green: 212, blue: 128)
        tabBar.isTranslucent = true
        tabBar.barTintColor = .clear
        //MARK:- background color set
        view.backgroundColor = .darkGray
    }
}
