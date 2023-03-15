//
//  VideoListVC.swift
//  Jio
//
//  Created by Pooja  on 14/03/23.
//

import UIKit

class VideoListVC: UIViewController {

    var arrCategories  = ["Top 10","Adventure","Education","Sports","Entertainment"]
    var arrItems       = ["Duis nonid lorem odio Ut dignissim viverra","Ut dignissim viverra nonid lorem odio",""]
    var arrItemImage   =  [#imageLiteral(resourceName: "Image1"), #imageLiteral(resourceName: "Image2"), #imageLiteral(resourceName: "Image3"), #imageLiteral(resourceName: "Image4"), #imageLiteral(resourceName: "Image5"), #imageLiteral(resourceName: "Image6")]

    
    @IBOutlet weak var VideocollectionView: UICollectionView!
    @IBOutlet weak var firstCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        firstCollectionView.register(UINib(nibName: "VideoCell", bundle: nil), forCellWithReuseIdentifier: "VideoCell")
        VideocollectionView.register(UINib(nibName: "VideoListCell", bundle: nil), forCellWithReuseIdentifier: "VideoListCell")
    }
    

    

}
