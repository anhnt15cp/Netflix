//
//  MovieTaBarController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 29/09/2022.
//

import UIKit

class MovieTaBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabbar()
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .black
        tabBar.standardAppearance = appearance
        appearance.selectionIndicatorTintColor = .gray
    }
    
    func setUpTabbar() {
        let homePage = HomePageViewController()
        homePage.tabBarItem = UITabBarItem(title: "Trang chủ", image: UIImage(systemName:"house.fill"), selectedImage: UIImage(systemName: "house.fill") )
        homePage.tabBarItem.badgeValue = "N+"
        present(homePage, animated: true)
        
        let newAndHot = NewAndHotViewController()
        newAndHot.tabBarItem = UITabBarItem(title: "Mới & Hot",image: UIImage(systemName:"play.rectangle.on.rectangle"), selectedImage: UIImage(systemName: "play.rectangle.on.rectangle.fill"))
        
        present(newAndHot, animated: true)
        
        let install = InstallViewController()
        
        install.tabBarItem = UITabBarItem(title: "Tệp tải xuống", image: UIImage(systemName:"arrow.down.heart.fill"), selectedImage: UIImage(named: "arrow.down.heart.fill"))
        present(install, animated: true)
        
        self.viewControllers = [homePage,newAndHot,install]
    }
    
    
    
}
