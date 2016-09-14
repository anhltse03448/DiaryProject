//
//  ViewController.swift
//  Diary
//
//  Created by Lê Tuấn Anh on 4/24/16.
//  Copyright © 2016 Lê Tuấn Anh. All rights reserved.
//

import UIKit
import CarbonKit

class ViewController: UIViewController {
    @IBOutlet weak var contentView : UIView!
    let tabsName = ["SCREENER", "WATCHLIST", "MARKETS"]
    var categoryViewController : CategoryViewController!
    var categoryViewController2 : CategoryViewController!
    var categoryViewController3 : CategoryViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        initViewController()
        initCarbonTabs()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initViewController() {
        categoryViewController = self.storyboard?.instantiateViewControllerWithIdentifier("CategoryViewController") as! CategoryViewController
        categoryViewController2 = self.storyboard?.instantiateViewControllerWithIdentifier("CategoryViewController") as! CategoryViewController
        categoryViewController3 = self.storyboard?.instantiateViewControllerWithIdentifier("CategoryViewController") as! CategoryViewController
    }
    
    func initCarbonTabs() {
        let carbonTabSwipeNavigation = CarbonTabSwipeNavigation(items: tabsName, delegate: self)
        
        carbonTabSwipeNavigation.insertIntoRootViewController(self, andTargetView: contentView)
        carbonTabSwipeNavigation.toolbar.translucent = false
        carbonTabSwipeNavigation.setTabBarHeight(40)
        carbonTabSwipeNavigation.setIndicatorHeight(0)
        carbonTabSwipeNavigation.carbonSegmentedControl?.backgroundColor = UIColor.init(rgba: "#FAFAFA")
        carbonTabSwipeNavigation.setNormalColor(UIColor(rgba: "#040D14"), font: UIFont.systemFontOfSize(13))
        carbonTabSwipeNavigation.setSelectedColor(UIColor(rgba: "#2ECC71"), font: UIFont.boldSystemFontOfSize(14))
        
        for i in 0..<tabsName.count {
            carbonTabSwipeNavigation.carbonSegmentedControl?.setWidth(UIScreen.mainScreen().bounds.width / 3, forSegmentAtIndex: i)
        }
    }    
}
extension ViewController : CarbonTabSwipeNavigationDelegate {
    func carbonTabSwipeNavigation(carbonTabSwipeNavigation: CarbonTabSwipeNavigation, didMoveAtIndex index: UInt) {
        
        
    }
    
    func carbonTabSwipeNavigation(carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAtIndex index: UInt) -> UIViewController {
        
        switch index {
        case 0:
            return categoryViewController
        case 1:
            return categoryViewController2
        default:
            return categoryViewController3
        }
    }

}

