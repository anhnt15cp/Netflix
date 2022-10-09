//
//  NewAndHotViewController.swift
//  NetFlix
//
//  Created by Tuấn Anh on 29/09/2022.
//

import UIKit

class NewAndHotViewController: UIViewController {
    @IBOutlet weak var myButton1: UIButton!
    @IBOutlet weak var myButton2: UIButton!
    @IBOutlet weak var myButton3: UIButton!
    @IBOutlet weak var myButton4: UIButton!
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var mySearchText: UIButton!
    
    var movies: [DataMovie] = []
    
    @IBOutlet weak var myImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        setUpTbv()
        getdata()
        tapImage()
        
        let nib = UINib(nibName: "NewAndHotTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "NewAndHotTableViewCell")
    }
    func tapImage() {
        myImageView.isUserInteractionEnabled = true
        myImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapImage1)))
        
    }
    
    @objc func tapImage1()  {
        let alert = UIAlertController(title: "Login", message: "Vui lòng điền mật khẩu", preferredStyle: .alert)
        alert.addTextField()
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
            let alert = UIAlertController(title: "Errow", message: "Vui lòng nhập lại", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            self.present(alert, animated: true)
            
        }))
        
        present(alert, animated: true)
        
    }
    
    func setupButton() {
        myButton1.clipsToBounds = true
        myButton1.layer.cornerRadius = 20
        
        myButton2.clipsToBounds = true
        myButton2.layer.cornerRadius = 20
        
        myButton3.clipsToBounds = true
        myButton3.layer.cornerRadius = 20
        
        myButton4.clipsToBounds = true
        myButton4.layer.cornerRadius = 20
    }
    func setUpTbv() {
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    func getdata() {
        let data1 = DataMovie(monthMovie: "Month 10", dayMovie: " 19", nameMovie1: "Trường học thiện ác", dateMovie: "Ra mắt vào ngày 19 tháng 10", nameMovie2: "Trường học thiện ác", description: "Mối quen hệ của đôi bạn thân Sopie và Agatha bị thử thách khi nhọ bi đưa đến ngôi trường phép thuật dành cho anh hùng và ác nhân tương lai trong tuyện cổ tích", image: "newandhot1")
        let data2 = DataMovie(monthMovie: "Month 10", dayMovie: " 20", nameMovie1: "Người con của bộ lạc", dateMovie: "Ra mắt vào ngày 20 tháng 10", nameMovie2: "Người con của bộ lạc", description: "Giằng xé giữa đế chế hùng mạnh nuôi nấng mình và những người dân trong tộc , lòng trung thành đầy mâu thuẫn của vị chỉ huy La Mã dẫn đến cuộc đụng độ lịch sử hùng tráng", image: "newandhot2")
        let data3 = DataMovie(monthMovie: "Month 10", dayMovie: " 21", nameMovie1: "Cô gái thế kỷ 20", dateMovie: "Ra mắt vào ngày 21 tháng 10", nameMovie2: "Cô gái thế kỷ 20", description: "Năm 1999 một cô nàng tuổi tên theo dỗi sát sao một nam sinh trong trường thay cho cô bạn thân si tình . Nhưng rồi , chính cô lại bị cuốn vào câu chuyện tình cảm của riêng mình ", image: "newandhot3")
        let data4 = DataMovie(monthMovie: "Month 10", dayMovie: " 22", nameMovie1: "Thượng lan quyết", dateMovie: "Ra mắt vào ngày 22 tháng 10", nameMovie2: "Thượng lan quyết", description: "Khi một tiên nữ cấp thấp vô tình hồi sinh một ác quỷ hùng mạnh , số phận của hộ đan xen trong vũ trụ khi nhân giới rơi vào hỗn loạn", image: "newandhot4")
        let data5 = DataMovie(monthMovie: "Month10", dayMovie: "23", nameMovie1: "Máy bay mất tích", dateMovie: "Ra mắt vào ngày 23 tháng 10", nameMovie2: "Máy bay mất tích", description: "Một chuyến bay khởi hành nhiều năm trước giờ mới hạ cánh một cách khó hiểu . Hành khách trở về phải đối mặt với thực tại mới lạ lẫm khi mọi chuyện đã tiếp diễn mà không có họ", image: "5")
        
        movies.append(contentsOf: [data1,data2,data3,data4,data5])
        myTableView.reloadData()
    }
    @IBAction func searchMovieBt(_ sender: UIButton) {
        let vc = SearchMovieViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
    
}

extension NewAndHotViewController: UITableViewDataSource , UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewAndHotTableViewCell", for: indexPath) as! NewAndHotTableViewCell
        
        cell.configuration(movie: movies[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 460
    }
}
