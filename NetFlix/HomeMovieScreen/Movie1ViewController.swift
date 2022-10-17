//
//  Movie1ViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 11/10/2022.
//

import UIKit

class Movie1ViewController: UIViewController {
    @IBOutlet weak var nameLb: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var desciption: UILabel!
    var dataDetailMoivie =  DataMovie1()
    override func viewDidLoad() {
        super.viewDidLoad()
       setUpUi()
    }

    @IBAction func playMovie(_ sender: UIButton) {
        let vc = WatchMovieViewController()
        vc.urlMovie = dataDetailMoivie
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    func setUpUi() {
        imageView.image = UIImage(named: dataDetailMoivie.image)
        desciption.text = dataDetailMoivie.desceription
        nameLb.text = dataDetailMoivie.name
    }
}
