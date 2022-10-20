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
    var section1: [DataMovieSection] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableViewCell()
        getDataCell()
        section1 = DataMovieSection.allCases
    }
    func getDataCell() {
        let data = DataMovie1(image: "screach1", name: "The Batman", day: "", desceription: "The film sees Batman, who has been fighting crime in Gotham City for two years, uncover corruption while pursuing the Riddler (Dano), a serial killer who targets Gotham's elite. Development began after Ben Affleck was cast as Batman in the DC Extended Universe (DCEU) in 2013",url: "https://phimmoichills.net/xem/batman-vach-tran-su-that-tap-full-pm93833")
        let data1 = DataMovie1(image: "sreach2", name: "Vùng chiến sự nguy hiểm", day: "", desceription: "Vùng chiến sự nguy hiểm là bộ phim khoa học viên tưởng kể về sĩ quan tuy là người máy nhưng lại có suy nghĩ và hành động như con người. Câu chuyện bắt đầu khi một trung úy thực hiện cuộc tấn công bằng máy bay không người lái để hỗ trợ đồng đội mà không nghe theo chỉ thị của cấp trên",url: "https://motchill.com/xem-phim/vung-chien-su-nguy-hiem-tap-full-8642_108825.html")
        let data2 = DataMovie1(image: "sreach3", name: "Chúa tể những chiếc nhẫn ", day: "", desceription: "Chúa tể những chiếc nhẫn: Sự trở lại của nhà vua (tiêu đề tiếng Anh: The Lord of the Rings: The Return of the King) là bộ phim điện ảnh phiêu lưu kỳ ảo của đạo diễn Peter Jackson. Đây là bộ phim kết thúc của bộ ba phim Chúa tể những chiếc nhẫn trước đó là Hiệp hội nhẫn thần (2001) và Hai tòa tháp (2002).")
        let data3 = DataMovie1(image: "sreach4", name: "Die Hard", day: "", desceription: "Cốt truyện phim xoay quanh nhân vật John McClane, một sĩ quan thuộc Sở cảnh sát thành phố New York đang hết phiên làm việc, bị mắc kẹt trong một tòa nhà chọc trời ở Los Angeles trong một vụ cướp do Hans Gruber cầm đầu. Tác phẩm dựa trên cuốn tiểu thuyết Nothing Lasts Forever năm 1979 của nhà văn Roderick Thorp.")
        let data4 = DataMovie1(image: "sreach5", name: "Kẻ Hủy Diệt 2", day: "", desceription: "Kẻ hủy diệt 2: Ngày phán xét (tiếng Anh: Terminator 2: Judgment Day, thường được viết tắt là T2) là một bộ phim điện ảnh thuộc thể loại hành động/ khoa học viễn tưởng được đạo diễn, cùng viết kịch bản và đồng sản xuất bởi James Cameron, ra mắt khán giả vào năm 1991")
        let data5 = DataMovie1(image: "sreach6", name: "John Wick", day: "", desceription: "John Wick là một loạt tác phẩm giả tưởng thuộc thể loại hành động giật gân của Mỹ, được tạo ra bởi Derek Kolstad và thuộc sở hữu của Summit Entertainment. Nhân vật chính của sê-ri là John Wick (Keanu Reeves thủ vai), một cựu sát thủ lên đường trả thù những kẻ đã trộm xe và giết hại chú chó cưng của mình.")
        let data6 = DataMovie1(image: "sreach7", name: "Nhiệm vụ bất khả thi", day: "", desceription: "Nhiệm vụ bất khả thi hay Điệp vụ bất khả thi (tựa gốc tiếng Anh: Mission: Impossible) là một loạt phim về điệp viên hành động của Mỹ dựa trên và là phần tiếp theo của loạt phim truyền hình cùng tên do Bruce Geller tạo ra. Bộ phim chủ yếu được sản xuất bởi Tom Cruise trong vai Ethan Hunt, một đặc vụ của Lực lượng Nhiệm vụ Bất khả thi (Impossible Missions Force - IMF),")
        let data7 = DataMovie1(image: "sreach8", name: "Aquaman", day: "", desceription: "Chuyện phim Aquaman xoay quanh Arthur Curry (Jason Momoa) - đứa con mang hai dòng máu của con người trên mặt đất và tộc Atlantis dưới biển khơi.")
        let data8 = DataMovie1(image: "sreach9", name: "Captain Marvel", day: "", desceription: "Set in 1995, the story follows Danvers as she becomes Captain Marvel after Earth is caught in the center of a galactic conflict between two alien civilizations. Development of the film began by May 2013. It was officially announced in October 2014 as Marvel Studios' first female-led superhero film.")
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
    
    func moveOnMovie1ViewController(collectionIndex: Int) {
        let vc = Movie1ViewController()
        vc.dataDetailMoivie = dataMovie[collectionIndex]
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
}

extension HomePageViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        section1.count
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section1[section] {
        case .dataMovie1 , .dataMovie2 , .dataMovie3 :
            return 1
            
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch section1[indexPath.section] {
        case .dataMovie1 :
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomePageTableViewCell", for: indexPath) as! HomePageTableViewCell
            cell.array = dataMovie
            
            cell.didSelectedClosure = { collectionIndexPath in
                self.moveOnMovie1ViewController(collectionIndex: collectionIndexPath)
            }
            return cell
        case .dataMovie2 :
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "HomePageView1TableViewCell", for: indexPath) as! HomePageView1TableViewCell
            cell1.array = dataMovie1
            return cell1
        case .dataMovie3 :
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
        view.tintColor = .gray
        
    }
    
}
