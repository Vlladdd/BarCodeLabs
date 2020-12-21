//
//  MyDB.swift
//  boyarinova
//
//  Created by Vlad Nechiporenko on 12/21/20.
//  Copyright © 2020 Vlad Nechyporenko. All rights reserved.
//

import Foundation
import RealmSwift


class MyDB:Object{
    
    @objc dynamic var string = "String"
    @objc dynamic var barcode = "BarCode"
    @objc dynamic var type = "UPC"
}
