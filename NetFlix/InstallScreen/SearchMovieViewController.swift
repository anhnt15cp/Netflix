//
//  SearchMovieViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 02/10/2022.
//

import UIKit
struct movie {
    var image: String = ""
    var name: String = ""
}
class SearchMovieViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var mySearchBar: UISearchBar!
    
    var movies: [movie] = []
    var searchBar1: [movie] = []
    var searching: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        let nib = UINib(nibName: "SearchMovieTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "SearchMovieTableViewCell")
        myTableView.dataSource = self
        myTableView.delegate = self
        mySearchBar.delegate = self
        
    }
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated:  true)
    }
    
    
    func getData() {
        let data = movie(image: "screach1", name: "Kỵ sỹ bóng đêm")
        let data1 = movie(image: "sreach2", name: "Kẻ đánh cắp giấc mơ")
        let data2 = movie(image: "sreach3", name: "Chúa tế những chiếc nhẫn")
        let data3 = movie(image: "sreach4", name: "Đương đầu với thử thách")
        let data4 = movie(image: "sreach5", name: "Kẻ hủy diệt")
        let data5 = movie(image: "sreach6", name: "John Wick")
        let data6 = movie(image: "sreach7", name: "Mission impossible 7")
        let data7 = movie(image: "sreach8", name: "Aquaman and the lost kingdom")
        let data8 = movie(image: "sreach9", name: "Đại úy Marvel 2")
        let data9 = movie(image: "sreach10", name: "Người môi giới")
        
        movies.append(contentsOf: [data,data1,data2,data3,data4,data5,data6,data7,data8,data9])
        searchBar1.append(contentsOf: [data,data1,data2,data3,data4,data5,data6,data7,data8,data9])
        myTableView.reloadData()
    }
    
    
    
}

extension SearchMovieViewController: UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        searchBar1.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchMovieTableViewCell", for: indexPath) as? SearchMovieTableViewCell
        let item = searchBar1[indexPath.row]
        
        
        cell?.myImageView.image = UIImage(named: item.image)
        cell?.myLabel.text = item.name
        
        
        
        
        return cell!
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "TÌM KIẾM HÀNG ĐẦU"
    }
    
}
extension SearchMovieViewController: UISearchBarDelegate {
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText != "" {
            searchBar1 = movies.filter({ movie in
                movie.name.contains(searchText)
            })
            myTableView.reloadData()
        }else {
            searchBar1 = movies
            myTableView.reloadData()
            
        }
    }
}
