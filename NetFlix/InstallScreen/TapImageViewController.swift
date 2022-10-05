//
//  TapImageViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 03/10/2022.
//

import UIKit

class TapImageViewController: UIViewController {
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TapGestureImage()
        
    }
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    func TapGestureImage() {
        imageView1.isUserInteractionEnabled = true
        imageView1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(TapGesture)))
        
        imageView2.isUserInteractionEnabled = true
        imageView2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(TapGesture)))
        
        imageView3.isUserInteractionEnabled = true
        imageView3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(TapGesture)))
        
        imageView4.isUserInteractionEnabled = true
        imageView4.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(TapGesture)))
        
        imageView5.isUserInteractionEnabled = true
        imageView5.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(TapGesture)))
        
    }
    @objc func TapGesture() {
        let alert = UIAlertController(title: "Nhập mã  để truy cập hồ sơ này", message: "", preferredStyle: .alert)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "Hủy", style: .cancel))
        alert.addAction(UIAlertAction(title: "Đăng Nhập", style: .default, handler: { _ in
            let alert = UIAlertController(title: "Nhập sai mật mã", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true)
        }))
        
        present(alert, animated: true)
        
    }
    @IBAction func notification(_ sender: Any) {
    }
    @IBAction func list(_ sender: Any) {
    }
    @IBAction func setup(_ sender: Any) {
    }
    @IBAction func account(_ sender: Any) {
    }
    @IBAction func support(_ sender: Any) {
    }
    
    @IBAction func logOut(_ sender: Any) {
        let alert = UIAlertController(title: "Đăng xuất", message: "Khi đăng xuất khỏi ứng dụng này , bạn cũng sẽ đăng xuất khỏi tất cả các ứng dụng Netflix khác trên thiết bị này ", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Không", style: .cancel))
        alert.addAction(UIAlertAction(title: "Có", style: .default, handler: { _ in
            let vc = ViewController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        
        }))
        present(alert, animated: true)
    }
    
    
    
}
