//
//  CustomizableSegmentControl.swift
//  Jio
//
//  Created by Pooja  on 14/03/23.
//

import UIKit

class CustomizableSegmentControl: UISegmentedControl {

    
    private(set) lazy var radius:CGFloat = bounds.height / 2
    
    /// Configure selected segment inset, can't be zero or size will error when click segment
    private var segmentInset: CGFloat = 0.1{
        didSet{
            if segmentInset == 0{
                segmentInset = 0.1
            }
        }
    }
    
    override init(items: [Any]?) {
        super.init(items: items)
        selectedSegmentIndex = 0
    }
    
    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        super.init(coder: coder)
    }
    
    
    override func layoutSubviews(){
        super.layoutSubviews()
        self.backgroundColor = .white
        
        //MARK: - Configure Background Radius
        self.layer.cornerRadius = self.radius
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth  = 2

        //MARK: - Find selectedImageView
        let selectedImageViewIndex = numberOfSegments
        if let selectedImageView = subviews[selectedImageViewIndex] as? UIImageView
        {
            //MARK: - Configure selectedImageView Color
            selectedImageView.backgroundColor = appPrimary
            selectedImageView.image = nil
            
            //MARK: - Configure selectedImageView Inset with SegmentControl
            selectedImageView.bounds = selectedImageView.bounds.insetBy(dx: segmentInset, dy: segmentInset)
            
            //MARK: - Configure selectedImageView cornerRadius
            selectedImageView.layer.masksToBounds = true
            
            selectedImageView.layer.cornerRadius = self.radius
            
            selectedImageView.layer.removeAnimation(forKey: "SelectionBounds")

        }
       
    }
   
}
