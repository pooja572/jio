//
//  VRAppsVC.swift
//  Jio
//
//  Created by Pooja  on 14/03/23.
//

import UIKit

class VRAppsVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UINib(nibName: "LiveUserCell", bundle: nil), forCellWithReuseIdentifier: "LiveUserCell")
    }
    

}


