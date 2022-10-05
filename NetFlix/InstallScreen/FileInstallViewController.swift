//
//  FileInstallViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 02/10/2022.
//

import UIKit
import WebKit
class FileInstallViewController: UIViewController , WKNavigationDelegate {
    @IBOutlet weak var myWebkit: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
let url = URL(string: "https://www.netflix.com/latest")
        let request = URLRequest(url: url!)
        myWebkit.load(request)
       
    }

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
   

}
