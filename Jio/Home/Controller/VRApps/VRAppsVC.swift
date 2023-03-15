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

        
        let allApps = UIApplication.shared
             for app in allApps.windows {
                 for view in app.subviews {
                     if let iconView = NSClassFromString("Docky.AppIconView") {
                         if view.isKind(of: iconView) {
                             if let icon = view.subviews.first?.subviews.first as? UIImageView, let name = icon.accessibilityLabel {
                                 print("App Name: \(name)")
                                 print("Icon: \(icon.image)")
                             }
                         }
                     }
                 }
             }
      
        collectionView.register(UINib(nibName: "LiveUserCell", bundle: nil), forCellWithReuseIdentifier: "LiveUserCell")
    }
    

}


