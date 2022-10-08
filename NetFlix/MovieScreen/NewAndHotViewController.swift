//
//  NewAndHotViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 29/09/2022.
//

import UIKit

class NewAndHotViewController: UIViewController {
    @IBOutlet weak var myTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .black
        myTabBar.standardAppearance = appearance
        appearance.selectionIndicatorTintColor = .gray
    }
    
    
    
    
}
