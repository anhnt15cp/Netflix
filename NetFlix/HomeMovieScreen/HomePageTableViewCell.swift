//
//  HomePageTableViewCell.swift
//  NetFlix
//
//  Created by Tuấn Anh on 06/10/2022.
//

import UIKit

//typealias DidSelectClosure = ((_ tableIndex: Int , _ collectionIndex: Int) ->Void)

class HomePageTableViewCell: UITableViewCell {
    @IBOutlet weak var myCollectionView: UICollectionView!
    var index: Int = 0
    var didSelectedClosure: (( _ tableIndex: Int ,  _ collectionIndex: Int) ->Void)?
    var array: [String] = []
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCollection()
       
    }
    func setUpCollection() {
        let nib = UINib(nibName: "HomePageCollectionViewCell", bundle: nil)
        myCollectionView.register(nib, forCellWithReuseIdentifier: "HomePageCollectionViewCell")
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        let layout = myCollectionView.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.itemSize = CGSize(width: myCollectionView.bounds.width/3, height: 200)
        layout?.scrollDirection = .horizontal
        layout?.minimumInteritemSpacing = 10
        layout?.minimumLineSpacing = 10
        
    }
    
    
}
extension HomePageTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomePageCollectionViewCell", for: indexPath) as! HomePageCollectionViewCell
        cell.myImageView.image = UIImage(named: array[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/3, height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        didSelectedClosure!(index,indexPath.row)
    }
}
