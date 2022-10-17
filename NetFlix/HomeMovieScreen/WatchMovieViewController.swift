//
//  WatchMovieViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 13/10/2022.
//

import UIKit
import WebKit
class WatchMovieViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet weak var myWebKit: WKWebView!
    var urlMovie = DataMovie1()
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: urlMovie.url)
        let request = URLRequest(url: url!)
        myWebKit.load(request)
        
    }

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
   

}
