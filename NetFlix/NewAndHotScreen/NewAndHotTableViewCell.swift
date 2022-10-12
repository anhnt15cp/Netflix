//
//  NewAndHotTableViewCell.swift
//  NetFlix
//
//  Created by Tuấn Anh on 09/10/2022.
//

import UIKit

class NewAndHotTableViewCell: UITableViewCell {
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var nameMovieLabel1: UILabel!
    @IBOutlet weak var dateMovieLabel: UILabel!
    @IBOutlet weak var nameMovieLabel2: UILabel!
    @IBOutlet weak var descriptionMovieLb: UILabel!
    @IBOutlet weak var imageMovie: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configuration(movie: DataMovie) {
        monthLabel.text = movie.monthMovie
        dayLabel.text = movie.dayMovie
        nameMovieLabel1.text = movie.nameMovie1
        dateMovieLabel.text = movie.dateMovie
        nameMovieLabel2.text = movie.nameMovie2
        descriptionMovieLb.text = movie.description
        imageMovie.image = UIImage(named: movie.image)
        
        
    }
   
    
    
}
