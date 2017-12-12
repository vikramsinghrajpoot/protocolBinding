//
//  TableViewCell.swift
//  TableViewDatasouceSample
//
//  Created by vikram singh rajpoot on 25/09/17.
//  Copyright © 2017 vikram singh rajpoot. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell,UserBidable {

    var user:User?
    @IBOutlet weak var nameLbl: UILabel?
    @IBOutlet weak var emailLbl: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
