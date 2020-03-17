//
//  BaseDao.swift
//  Zennex
//
//  Created by Zennex on 17/03/2020.
//  Copyright © 2020 tamimattafi. All rights reserved.
//

import Foundation

import Realm
import RealmSwift

protocol BaseDao : DataSource {
    associatedtype T : Object
    func getFiltering(by filter: String) -> Results<T>
    func getOrdering(by property: String, ascending: Bool) -> Results<T>
    func get(by id: Int64) -> T?
    func insert(item: T) -> Bool
    func delete(item: T) -> Bool
    func update(item: T) -> Bool
}
