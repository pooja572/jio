//
//  VideoVC+CollectionExtension.swift
//  Jio
//
//  Created by Pooja  on 15/03/23.
//



import UIKit

extension VideoListVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    
    
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == firstCollectionView
        {
            return arrCategories.count
        }
        else{
            return arrItemImage.count
        }
    }
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var superCell = UICollectionViewCell()
        if collectionView == firstCollectionView{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VideoCell", for: indexPath) as? VideoCell else { return UICollectionViewCell() }
            
            cell.lblName.text = arrCategories[indexPath.row]
            superCell = cell
        }
       else if collectionView == VideocollectionView
       {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VideoListCell", for: indexPath) as? VideoListCell else { return UICollectionViewCell() }
            cell.lblName.text = "Duis nonid lorem odio Ut dignissim viverra"
            cell.videoImage.image = arrItemImage[indexPath.row]
            superCell = cell
        }
        return superCell
    }
    
    
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == VideocollectionView{
            return 15
        }else {
            return 8
        }
    }


    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let indexPath = IndexPath(row: indexPath.row, section: 0)
        let cell = collectionView.cellForItem(at: indexPath) as? VideoCell
        cell?.viewCategory.backgroundColor = appPrimary
        cell?.lblName.textColor = .white
        if collectionView == firstCollectionView
        {
            arrItemImage.shuffle()
            VideocollectionView.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
      
        let indexPath = IndexPath(row: indexPath.row, section: 0)
        let cell = collectionView.cellForItem(at: indexPath) as? VideoCell
        cell?.viewCategory.backgroundColor = .systemGray6
        cell?.lblName.textColor = .gray
    }
    
   
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == firstCollectionView{
            let cellWidth = collectionView.bounds.size.width
            return CGSize(width: cellWidth, height: 44)
        }
        else{
            let size = (collectionView.frame.size.width/2)
            return CGSize(width: (size - 10), height: 140)
        }
        
    }
    
}
    
