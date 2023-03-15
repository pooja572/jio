//
//  HomeVC.swift
//  Jio
//
//  Created by Pooja  on 14/03/23.
//

import UIKit

class HomeVC: UIViewController {

    enum TabIndex : Int {
            case firstChildTab = 0
            case secondChildTab = 1
        }
    
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var segment: HBSegmentedControl!
    
    @IBOutlet weak var segmentedControl: CustomizableSegmentControl!
    @IBOutlet weak var contentView: UIView!
    
    
    var currentViewController: UIViewController?
       lazy var firstChildTabVC: UIViewController? = {
           let firstChildTabVC = self.storyboard?.instantiateViewController(withIdentifier: "VRAppsVC")
           return firstChildTabVC
       }()
       lazy var secondChildTabVC : UIViewController? = {
           let secondChildTabVC = self.storyboard?.instantiateViewController(withIdentifier: "VideoListVC")
           
           return secondChildTabVC
       }()

    
    @IBOutlet weak var btnRemote: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchView.dropShadow(scale: true)

        segment.items = ["VR Apps", "360 Videos"]
        segment.font = UIFont(name: "Avenir-Black", size: 12)
        segment.borderColor = UIColor.gray
        segment.selectedIndex = 1
        segment.padding = 4
        
        segment.addTarget(self, action: #selector(HomeVC.segmentValueChanged(_:)), for: .valueChanged)
        segment.selectedIndex = TabIndex.firstChildTab.rawValue
        displayCurrentTab(TabIndex.firstChildTab.rawValue)
        // Do any additional setup after loading the view.
    }
    @objc func segmentValueChanged(_ sender: AnyObject?){
        self.currentViewController!.view.removeFromSuperview()
        self.currentViewController!.removeFromParent()
        displayCurrentTab(segment.selectedIndex)
       }
    
    @IBAction func btnRemote(_ sender: Any) {
        Alert.shared.toastWithOneBtn("Welcome in JIO app", "", btnName: "ok"){ ( btnName) in
         
        }
    }
    
    @IBAction func btnVR(_ sender: Any) {
        Alert.shared.toastWithOneBtn("Welcome in JIO app", "", btnName: "ok"){ ( btnName) in
         
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            if let currentViewController = currentViewController {
                currentViewController.viewWillDisappear(animated)
            }
        }

    
    @IBAction func switchTabs(_ sender: UISegmentedControl) {
        self.currentViewController!.view.removeFromSuperview()
        self.currentViewController!.removeFromParent()
        displayCurrentTab(sender.selectedSegmentIndex)
    }
   
    func displayCurrentTab(_ tabIndex: Int){
            if let vc = viewControllerForSelectedSegmentIndex(tabIndex) {
                
                self.addChild(vc)
                vc.didMove(toParent: self)
                
                vc.view.frame = self.contentView.bounds
                self.contentView.addSubview(vc.view)
                self.currentViewController = vc
            }
        }
        
        func viewControllerForSelectedSegmentIndex(_ index: Int) -> UIViewController? {
            var vc: UIViewController?
            switch index {
            case TabIndex.firstChildTab.rawValue :
                vc = firstChildTabVC
            case TabIndex.secondChildTab.rawValue :
                vc = secondChildTabVC
            default:
            return nil
            }
        
            return vc
        }
    }

