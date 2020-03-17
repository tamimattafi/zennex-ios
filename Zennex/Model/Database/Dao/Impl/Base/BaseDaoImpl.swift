//
//  BaseDaoImpl.swift
//  Zennex
//
//  Created by Zennex on 17/03/2020.
//  Copyright © 2020 tamimattafi. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class BaseDaoImpl<T : Object>: BaseDao {
    
    typealias T = T
    
    private let realm: Realm

    init(realm: Realm) {
        self.realm = realm
    }
    
    func get(by id: Int64) -> T? {
        realm.objects(T.self).filter("id == \(id)").first
    }
    
    func getFiltering(by filter: String) -> Results<T> {
        realm.objects(T.self).filter(filter)
    }
    
    func getOrdering(by property: String, ascending: Bool) -> Results<T> {
        realm.objects(T.self).sorted(byKeyPath: property, ascending: ascending)
    }
    
    func insert(item: T) -> Bool {
        ( try? realm.write { realm.add(item) } ) != nil
    }
    
    func delete(item: T) -> Bool {
        ( try? realm.write { realm.delete(item) } ) != nil
    }
    
    func update(item: T) -> Bool {
        ( try? realm.write { realm.add(item, update: .modified) } ) != nil
    }
    
    func release() {
        realm.cancelWrite()
    }
    
}
