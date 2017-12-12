//
//  TableViewDataSource.swift
//  TableViewDatasouceSample
//
//  Created by vikram singh rajpoot on 25/09/17.
//  Copyright © 2017 vikram singh rajpoot. All rights reserved.
//

import UIKit

typealias TableViewDataSourceBlock = (_ cell:UITableViewCell?, _ item:Any?)->()

class TableViewDataSource: NSObject,UITableViewDataSource {
    
    
    var items:[Any]?
    var cellId:String?
    var cellBlock:TableViewDataSourceBlock?
    
    
     init(items:[Any]?, cellId:String?, cellBlock:TableViewDataSourceBlock?) {
        if let nonNillItems = items {
            self.items = nonNillItems
        }
        
        if let nonNillCellId = cellId {
            self.cellId = nonNillCellId
        }
        
        if let nonNillICellBlock = cellBlock {
            self.cellBlock = nonNillICellBlock
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (items?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId!, for: indexPath)
        
        if let _ = self.cellBlock, let item = self.items?[indexPath.row] {
            self.cellBlock!(cell,item)
        }
        return cell
        
    }

}
