//
//  SetupInstallViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 02/10/2022.
//

import UIKit

class SetupInstallViewController: UIViewController {
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBAction func install1(_ sender: UISwitch) {
        if sender.isOn {
            let alert = UIAlertController(title: "Vui lòng nhập mật khẩu", message: "", preferredStyle: .alert)
            alert.addTextField()
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
                let alert = UIAlertController(title: "Sai mật khẩu", message: "", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "dong y", style: .default) { action in
                    self.switch1.setOn(false, animated: true)
                    self.present(alert, animated: true)
                }
                alert.addAction(okAction)
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            present(alert, animated: true)
        }
    }
    @IBAction func install2(_ sender: UISwitch) {
        if sender.isOn {
            let alert = UIAlertController(title: "Vui lòng nhập mật khẩu", message: "", preferredStyle: .alert)
            alert.addTextField()
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
                let alert = UIAlertController(title: "Sai mật khẩu", message: "", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
                    self.switch2.setOn(false, animated: true)
                }))
                self.present(alert, animated: true)
            }))
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            present(alert, animated: true)
        }
        
    }
    
    
}
