//
//  SearchMovieViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 02/10/2022.
//

import UIKit
struct Movie {
    var image: String = ""
    var name: String = ""
}
class SearchMovieViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var mySearchBar: UISearchBar!
    
    var movies: [Movie] = []
    var movies1: [Movie] = []
    var searchBar1: [Movie] = []
    var searchBar2: [Movie] = []

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
        let data = Movie(image: "screach1", name: "Kỵ sỹ bóng đêm")
        let data1 = Movie(image: "sreach2", name: "Kẻ đánh cắp giấc mơ")
        let data2 = Movie(image: "sreach3", name: "Chúa tế những chiếc nhẫn")
        let data3 = Movie(image: "sreach4", name: "Đương đầu với thử thách")
        let data4 = Movie(image: "sreach5", name: "Kẻ hủy diệt")
        let data5 = Movie(image: "sreach6", name: "John Wick")
        let data6 = Movie(image: "sreach7", name: "Mission impossible 7")
        let data7 = Movie(image: "sreach8", name: "Aquaman and the lost kingdom")
        let data8 = Movie(image: "sreach9", name: "Đại úy Marvel 2")
        let data9 = Movie(image: "sreach10", name: "Người môi giới")
        let data10 = Movie(image: "vietnam1", name: "Thị Nở")
        let data11 = Movie(image: "vietnam2", name: "Tấm Cám Chuyện Chưa Kể")
        let data12 = Movie(image: "vietnam3", name: "Cả Một Đời Ân Oán")
        let data13 = Movie(image: "vietnam4", name: "Sinh Tử")
        let data14 = Movie(image: "vietnam5", name: "Người Phán Xử")
        let data15 = Movie(image: "vietnam6", name: "Về Nhà Đi Con")
        let data16 = Movie(image: "vietnam7", name: "Mắt Biếc")
        let data17 = Movie(image: "vietnam8", name: "Mến Gái Miền Tây")
        let data18 = Movie(image: "vietnam9", name: "Quỳnh Búp Bê")
        
        
        movies.append(contentsOf: [data,data1,data2,data3,data4,data5,data6,data7,data8,data9])
        movies1.append(contentsOf: [data10,data11,data12,data13,data14,data15,data16,data17,data18])
        searchBar1.append(contentsOf: [data,data1,data2,data3,data4,data5,data6,data7,data8,data9])
        searchBar2.append(contentsOf: [data10,data11,data12,data13,data14,data15,data16,data17,data18])
        myTableView.reloadData()
    }
    
    
    
}

extension SearchMovieViewController: UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0 :
            return searchBar1.count
        case 1 :
            return searchBar2.count
        default:
            return 3
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SearchMovieTableViewCell", for: indexPath) as? SearchMovieTableViewCell
            let item = searchBar1[indexPath.row]
            
            cell?.myImageView.image = UIImage(named: item.image)
            cell?.myLabel.text = item.name
            
            return cell!
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SearchMovieTableViewCell", for: indexPath) as? SearchMovieTableViewCell
            let item = searchBar2[indexPath.row]
            
            cell?.myImageView.image = UIImage(named: item.image)
            cell?.myLabel.text = item.name
            
            return cell!
        }
        
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0 :
            return " Tìm Kiếm Hàng Đầu"
        case 1 :
            return " Phim Truyền Hình Việt Nam"
        default:
            return ""
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
}
    
extension SearchMovieViewController: UISearchBarDelegate {
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText != "" {
            searchBar1 = movies.filter({ movie in
                movie.name.contains(searchText)
            })
            searchBar2 = movies1.filter({ moive in
                moive.name.contains(searchText)
            })
            myTableView.reloadData()
        }else {
            searchBar1 = movies
            searchBar2 = movies1
            myTableView.reloadData()
            
        }
    }
}
