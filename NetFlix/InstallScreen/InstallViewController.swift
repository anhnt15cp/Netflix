//
//  InstallViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 29/09/2022.
//

import UIKit

class InstallViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.tabBar.backgroundColor = .black
        tapImage()
        
        
    }
    @IBAction func sreachMovie(_ sender: UIButton) {
        let sreachVC = SearchMovieViewController()
        sreachVC.modalPresentationStyle = .fullScreen
        present(sreachVC, animated: true)
    }
    
    @IBAction func setupInstall(_ sender: UIButton) {
        let setupVC = SetupInstallViewController()
        setupVC.modalPresentationStyle = .fullScreen
        present(setupVC, animated: true)
    }
    
    @IBAction func whatInstall(_ sender: UIButton) {
        let file = FileInstallViewController()
        file.modalTransitionStyle = .coverVertical
        file.modalPresentationStyle = .fullScreen
        present(file, animated: true)
    }
    func tapImage() {
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapGestureImage)))
        
    }
    
    @objc func tapGestureImage() {
        let tapVC = TapImageViewController()
        tapVC.modalPresentationStyle = .fullScreen
        present(tapVC, animated: true)
        
        
    }
}
