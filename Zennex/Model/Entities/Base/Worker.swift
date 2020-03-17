//
//  Worker.swift
//  Zennex
//
//  Created by Zennex on 16/03/2020.
//  Copyright © 2020 tamimattafi. All rights reserved.
//

import Foundation
import RealmSwift

class Worker : Object {
    @objc var id: Int64 = -1
    @objc var name: String = ""
    @objc var middleName: String = ""
    @objc var famillyName: String = ""
    @objc var payment: Int64 = 0
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
}
