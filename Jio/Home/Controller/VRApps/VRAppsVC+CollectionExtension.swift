//
//  VRAppsVC+CollectionExtension.swift
//  Jio
//
//  Created by Pooja  on 15/03/23.
//


import UIKit

extension VRAppsVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LiveUserCell", for: indexPath) as? LiveUserCell else { return UICollectionViewCell() }
 
        return cell
    }


    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width)
        return CGSize(width: size, height: 100)
    }
}

