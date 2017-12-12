//
//  ViewController.swift
//  TableViewDatasouceSample
//
//  Created by vikram singh rajpoot on 25/09/17.
//  Copyright © 2017 vikram singh rajpoot. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UserBidable {
    
    var user: User?
    @IBOutlet weak var emailLbl: UILabel?
    @IBOutlet weak var nameLbl: UILabel?
    
    @IBOutlet weak var tableView: UITableView!
    var tableDatSource:TableViewDataSource?
    let items = [User.init(name: "abc", email: "abc@mail.com"),User.init(name: "abc", email: "abc@mail.com")]

    override func viewDidLoad() {
        user =   items[0]
        self.bind(user: user!)
        
        super.viewDidLoad()
        
        self.tableDatSource = TableViewDataSource(items: items, cellId: "TableViewCell", cellBlock: { (cell, item) in
            if let _ = item {
               (cell as? TableViewCell)?.bind(user: item as! User)
            }
        })
        
        self.tableView.dataSource = self.tableDatSource
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

