//
//  WhoWatchingViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 30/09/2022.
//

import UIKit

class WhoWatchingViewController: UIViewController {
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTapGestureImage()

       
        
    }
    func setUpTapGestureImage() {
        imageView1.isUserInteractionEnabled = true
        imageView1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapGesture)))
        
        imageView2.isUserInteractionEnabled = true
        imageView2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapGesture)))
        
        imageView3.isUserInteractionEnabled = true
        imageView3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapGesture)))
        
        imageView4.isUserInteractionEnabled = true
        imageView4.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapGesture)))
        
        imageView5.isUserInteractionEnabled = true
        imageView5.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapGesture)))
    }
    @objc func tapGesture() {
        let tapVC = MovieTaBarController()
        tapVC.modalPresentationStyle = .fullScreen
        present(tapVC, animated: true)
        
        
    }
    
    
}
