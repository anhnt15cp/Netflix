//
//  MovieViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 10/10/2022.
//

import UIKit
import WebKit

class MovieViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet weak var myWebKit: WKWebView!
    var url11: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: url11)
        let request = URLRequest(url: url!)
        myWebKit.load(request)
        // Do any additional setup after loading the view.
    }
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
}
