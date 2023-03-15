//
//  VideoListCell.swift
//  Jio
//
//  Created by Pooja  on 15/03/23.
//

import UIKit

class VideoListCell: UICollectionViewCell {

    @IBOutlet weak var videoImage: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var viewVideo: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        videoImage.dropShadow(scale: true)

       
    }

}
