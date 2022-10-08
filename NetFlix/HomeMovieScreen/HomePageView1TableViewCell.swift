//
//  HomePageView1TableViewCell.swift
//  NetFlix
//
//  Created by Tuấn Anh on 08/10/2022.
//

import UIKit

class HomePageView1TableViewCell: UITableViewCell {
    var array: [String] = []
    
    @IBOutlet weak var myCollectionView1: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpCollectionViewCell()
        
    }
    func setUpCollectionViewCell() {
        myCollectionView1.delegate = self
        myCollectionView1.dataSource = self
        let nib = UINib(nibName: "HomePage1CollectionViewCell", bundle: nil)
        myCollectionView1.register(nib, forCellWithReuseIdentifier: "HomePage1CollectionViewCell")
        
        let layout = myCollectionView1.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.itemSize = CGSize(width: myCollectionView1.bounds.width/3, height: 200)
        layout?.scrollDirection = .horizontal
        layout?.minimumInteritemSpacing = 10
        layout?.minimumLineSpacing = 10
        
        
    }
  
    
}
extension HomePageView1TableViewCell: UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomePage1CollectionViewCell", for: indexPath) as! HomePage1CollectionViewCell
        cell.imageView.image = UIImage(named: array[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/3, height: 200)
    }
    
}
