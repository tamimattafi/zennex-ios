//
//  OfficeWorker.swift
//  Zennex
//
//  Created by Zennex on 17/03/2020.
//  Copyright © 2020 tamimattafi. All rights reserved.
//

import Foundation

import Realm
import RealmSwift

class SimpleWorker : Worker {
    @objc var workingPlace: Int = 0
    @objc var lunchTime: Int64 = 0
}
