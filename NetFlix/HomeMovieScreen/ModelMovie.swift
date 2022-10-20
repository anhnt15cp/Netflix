//
//  File.swift
//  NetFlix
//
//  Created by Tuấn Anh on 11/10/2022.
//

import Foundation
struct DataMovie1 {
    var image: String = ""
    var name: String = ""
    var day: String = ""
    var desceription: String = ""
    var url: String = ""
}

enum DataMovieSection : Int , CaseIterable {
    case dataMovie1
    case dataMovie2
    case dataMovie3
    
}
