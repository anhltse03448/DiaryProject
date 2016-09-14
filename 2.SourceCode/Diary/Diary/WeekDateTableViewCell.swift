//
//  WeekDateTableViewCell.swift
//  Diary
//
//  Created by Anh Tuan on 9/14/16.
//  Copyright © 2016 Lê Tuấn Anh. All rights reserved.
//

import UIKit

class WeekDateTableViewCell: UITableViewCell {
    @IBOutlet weak var view1 : UIView!
    @IBOutlet weak var view2 : UIView!
    @IBOutlet weak var view3 : UIView!
    @IBOutlet weak var view4 : UIView!
    @IBOutlet weak var view5 : UIView!
    @IBOutlet weak var view6 : UIView!
    @IBOutlet weak var view7 : UIView!
    
    @IBOutlet weak var lbl1 : UILabel!
    @IBOutlet weak var lbl2 : UILabel!
    @IBOutlet weak var lbl3 : UILabel!
    @IBOutlet weak var lbl4 : UILabel!
    @IBOutlet weak var lbl5 : UILabel!
    @IBOutlet weak var lbl6 : UILabel!
    @IBOutlet weak var lbl7 : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
