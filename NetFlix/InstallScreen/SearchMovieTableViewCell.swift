//
//  SearchMovieTableViewCell.swift
//  NetFlix
//
//  Created by Tuấn Anh on 02/10/2022.
//

import UIKit

class SearchMovieTableViewCell: UITableViewCell {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    func config(model: movie) {
        myImageView.image = UIImage(named: model.image)
        myLabel.text = model.name
    }
  
    
}
