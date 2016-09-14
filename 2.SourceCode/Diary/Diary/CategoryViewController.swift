//
//  CategoryViewController.swift
//  Diary
//
//  Created by Anh Tuan on 9/13/16.
//  Copyright © 2016 Lê Tuấn Anh. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    @IBOutlet weak var tbl : UITableView!
    var listDate = [DateObject]()
    override func viewDidLoad() {
        super.viewDidLoad()
        listDate = Ultis.getAllDayOfMonth()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

extension CategoryViewController : UITableViewDataSource , UITableViewDelegate {
    n
}
