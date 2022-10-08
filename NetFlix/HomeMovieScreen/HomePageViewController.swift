//
//  HomePageViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 06/10/2022.
//

import UIKit

class HomePageViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    var image: [String] = ["screach1","sreach2","sreach3","sreach4","sreach5","sreach6","sreach7","sreach8","sreach9",]
    var image1: [String] = ["vietnam1","vietnam2","vietnam3","vietnam4","vietnam5","vietnam6","vietnam7","vietnam8","vietnam9"]
    override func viewDidLoad() {
        super.viewDidLoad()
       setUpTableViewCell()
    }
    
    func setUpTableViewCell() {
        myTableView.delegate = self
        myTableView.dataSource = self
        let nib = UINib(nibName: "HomePageTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "HomePageTableViewCell")
        
        let nib1 = UINib(nibName: "HomePageView1TableViewCell", bundle: nil)
        myTableView.register(nib1, forCellReuseIdentifier: "HomePageView1TableViewCell")
        
    }
    
}

extension HomePageViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        switch tableView.numberOfSections {
        case 0:
            return image.count
        case 1:
            return image1.count
        default:
            return 2
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomePageTableViewCell", for: indexPath) as! HomePageTableViewCell
            cell.array = image
            return cell
        } else {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "HomePageView1TableViewCell", for: indexPath) as! HomePageView1TableViewCell
            cell1.array = image1
            return cell1
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Top 10 chương trình truyền hình"
        case 1:
            return "Chương trình truyền hình Việt Nam"
        case 2:
            return "Hiện đang thịnh hành"
        case 3:
            return "Loat phim truyền hình ngắn"
        case 4:
            return "Chỉ có trên Netflix"
        case 5:
            return "Danh sách xem tiếp tục của Tuấn Anh"
        case 6:
            return "Thời kì lịch sử"
        case 7:
            return "Chương trình truyền hình hàn quốc"
        case 8:
            return "Phim truyền hình chính kịch Âu - Mỹ"
            
        default:
            return ""
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
}
