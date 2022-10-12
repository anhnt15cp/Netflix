//
//  HomePageViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 06/10/2022.
//

import UIKit

class HomePageViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    var dataMovie: [DataMovie1] = []
    var dataMovie1: [DataMovie1] = []
    var dataMovie2: [DataMovie1] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableViewCell()
        getDataCell1()
    }
    func getDataCell1() {
       let data = DataMovie1(image: "screach1", name: "", day: "", desceription: "")
        let data1 = DataMovie1(image: "sreach2", name: "", day: "", desceription: "")
        let data2 = DataMovie1(image: "sreach3", name: "", day: "", desceription: "")
        let data3 = DataMovie1(image: "sreach4", name: "", day: "", desceription: "")
        let data4 = DataMovie1(image: "sreach5", name: "", day: "", desceription: "")
        let data5 = DataMovie1(image: "sreach6", name: "", day: "", desceription: "")
        let data6 = DataMovie1(image: "sreach7", name: "", day: "", desceription: "")
        let data7 = DataMovie1(image: "sreach8", name: "", day: "", desceription: "")
        let data8 = DataMovie1(image: "sreach9", name: "", day: "", desceription: "")
        dataMovie.append(contentsOf: [data,data1,data2,data3,data4,data5,data6,data7,data8])
        
        let data11 = DataMovie1(image: "vietnam1", name: "", day: "", desceription: "")
        let data22 = DataMovie1(image: "vietnam2", name: "", day: "", desceription: "")
        let data33 = DataMovie1(image: "vietnam3", name: "", day: "", desceription: "")
        let data44 = DataMovie1(image: "vietnam4", name: "", day: "", desceription: "")
        let data55 = DataMovie1(image: "vietnam5", name: "", day: "", desceription: "")
        let data66 = DataMovie1(image: "vietnam6", name: "", day: "", desceription: "")
        let data77 = DataMovie1(image: "vietnam7", name: "", day: "", desceription: "")
        let data88 = DataMovie1(image: "vietnam8", name: "", day: "", desceription: "")
        let data99 = DataMovie1(image: "vietnam9", name: "", day: "", desceription: "")
        dataMovie1.append(contentsOf: [data11,data22,data33,data44,data55,data66,data77,data88,data99])
        
        let data111 = DataMovie1(image: "thinhhanh1", name: "", day: "", desceription: "")
        let data222 = DataMovie1(image: "thinhhanh2", name: "", day: "", desceription: "")
        let data333 = DataMovie1(image: "thinhhanh3", name: "", day: "", desceription: "")
        let data444 = DataMovie1(image: "thinhhanh4", name: "", day: "", desceription: "")
        let data555 = DataMovie1(image: "thinhhanh5", name: "", day: "", desceription: "")
        let data666 = DataMovie1(image: "thinhhanh6", name: "", day: "", desceription: "")
        let data777 = DataMovie1(image: "thinhhanh7", name: "", day: "", desceription: "")
        let data888 = DataMovie1(image: "thinhhanh8", name: "", day: "", desceription: "")
        let data999 = DataMovie1(image: "thinhhanh9", name: "", day: "", desceription: "")
        dataMovie2.append(contentsOf: [data111,data222,data333,data444,data555,data666,data777,data888,data999])
        
        myTableView.reloadData()
    }
    
    func setUpTableViewCell() {
        myTableView.delegate = self
        myTableView.dataSource = self
        let nib = UINib(nibName: "HomePageTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "HomePageTableViewCell")
        
        let nib1 = UINib(nibName: "HomePageView1TableViewCell", bundle: nil)
        myTableView.register(nib1, forCellReuseIdentifier: "HomePageView1TableViewCell")
        
        let nib2 = UINib(nibName: "HomePageView2TableViewCell", bundle: nil)
        myTableView.register(nib2, forCellReuseIdentifier: "HomePageView2TableViewCell")
    }
    func moveOnMovie1ViewController(tableIndex: Int, collecIndex: Int) {
        let vc = Movie1ViewController()
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}

extension HomePageViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        switch tableView.numberOfSections {
        case 0:
            return dataMovie.count
        case 1:
            return dataMovie1.count
        case 2:
            return dataMovie2.count
        default:
            return 3
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomePageTableViewCell", for: indexPath) as! HomePageTableViewCell
            cell.array = dataMovie
            cell.didSelectedClosure = { tableIndex, collectionIndex in
                
                self.moveOnMovie1ViewController(tableIndex: tableIndex, collecIndex: collectionIndex)
            }
            return cell
        }else if indexPath.section == 1 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "HomePageView1TableViewCell", for: indexPath) as! HomePageView1TableViewCell
            cell1.array = dataMovie1
            return cell1
        }else {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "HomePageView2TableViewCell", for: indexPath) as! HomePageView2TableViewCell
            cell2.array = dataMovie2
            return cell2
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
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .white
        
    }
    
}
