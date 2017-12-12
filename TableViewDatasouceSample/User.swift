//
//  User.swift
//  TableViewDatasouceSample
//
//  Created by vikram singh rajpoot on 28/09/17.
//  Copyright © 2017 vikram singh rajpoot. All rights reserved.
//

import UIKit

protocol UserBidable {
    var user:User? {get set}
    var nameLbl:UILabel?{get}
    var emailLbl:UILabel?{get}
}

extension UserBidable {
    func bind(user:User){
        self.nameLbl?.text = user.name
        self.emailLbl?.text = user.email

    }
}

class User {
    var name:String = ""
    var email:String = ""

    init(name:String, email:String) {
        self.name = name
        self.email = email
    }
}
