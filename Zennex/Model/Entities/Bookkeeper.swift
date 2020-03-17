//
//  Bookkeeper.swift
//  Zennex
//
//  Created by Zennex on 17/03/2020.
//  Copyright © 2020 tamimattafi. All rights reserved.
//

import Foundation

import Realm
import RealmSwift

class Bookkeeper: SimpleWorker {
    @objc var accountantType: Int = -1
    
    public class AccountantTypes {
        let PAYEMENT = 1
        let MATERIALS = 2
    }
}
