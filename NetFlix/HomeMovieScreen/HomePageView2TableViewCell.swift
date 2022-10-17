//
//  HomePageView2TableViewCell.swift
//  NetFlix
//
//  Created by Tuấn Anh on 08/10/2022.
//

import UIKit

class HomePageView2TableViewCell: UITableViewCell {
    @IBOutlet weak var myCollectionView2: UICollectionView!
    var array: [DataMovie1] = []

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCollection()
    }
    
    func setUpCollection() {
        myCollectionView2.delegate = self
        myCollectionView2.dataSource = self
        let nib = UINib(nibName: "HomePage2CollectionViewCell", bundle: nil)
        myCollectionView2.register(nib, forCellWithReuseIdentifier: "HomePage2CollectionViewCell")
    }
    
}

extension HomePageView2TableViewCell: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomePage2CollectionViewCell", for: indexPath) as? HomePage2CollectionViewCell
        cell?.myImageView.image = UIImage(named: array[indexPath.row].image)
        return cell!
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: myCollectionView2.bounds.width/3, height: 200)
    }
    
}
