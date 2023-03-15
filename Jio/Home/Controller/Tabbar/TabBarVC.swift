//
//  TabBarVC.swift
//  Jio
//
//  Created by Pooja  on 15/03/23.
//

import UIKit

class TabBarVC: UITabBarController,UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupMiddleButton()
        // Do any additional setup after loading the view.
    }
   
    
    // TabBarButton – Setup Middle Button
   
    
    func setupMiddleButton() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = self.view.bounds.height - menuButtonFrame.height - 45
        menuButtonFrame.origin.x = self.view.bounds.width / 2 - menuButtonFrame.size.width / 2
        menuButton.frame = menuButtonFrame
        menuButton.backgroundColor = appPrimary
        menuButton.layer.cornerRadius = menuButtonFrame.height/2
        self.view.addSubview(menuButton)
        menuButton.contentMode = .scaleToFill

        menuButton.setImage(UIImage(named: "Center"), for: UIControl.State.normal)
        menuButton.addTarget(self, action: #selector(TabBarVC.menuButtonAction), for: UIControl.Event.touchUpInside)
        
        self.view.layoutIfNeeded()
    }

    // Menu Button Touch Action
    @objc func menuButtonAction(sender: UIButton) {
        self.selectedIndex = 1
        // console print to verify the button works
        print("Middle Button was just pressed!")
       }
     }




