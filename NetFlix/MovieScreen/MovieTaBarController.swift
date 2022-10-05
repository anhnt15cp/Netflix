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
    }
    func setUpTabbar() {
        let homePage = HomePageViewController()
        homePage.tabBarItem = UITabBarItem(title: "Trang chủ", image: UIImage(systemName:"house.fill"), selectedImage: UIImage(systemName: "house.fill") )
        present(homePage, animated: true)
        
        let newAndHot = NewAndHotViewController()
        newAndHot.tabBarItem = UITabBarItem(title: "Mới & Hot",image: UIImage(systemName:"play.rectangle.on.rectangle"), selectedImage: UIImage(systemName: "play.rectangle.on.rectangle.fill"))
        present(newAndHot, animated: true)
        
        let install = InstallViewController()
        let install1 = UINavigationController(rootViewController: install)
        install1.tabBarItem = UITabBarItem(title: "Tệp tải xuống", image: UIImage(systemName:"arrow.down.heart.fill"), selectedImage: UIImage(named: "arrow.down.heart.fill"))
        navigationController?.pushViewController(install1, animated: true)
        
        self.viewControllers = [homePage,newAndHot,install1]
    }
    
    
    
}