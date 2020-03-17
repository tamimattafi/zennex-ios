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
    
    func get(with id: Int64) -> T? {
        return realm.objects(T.self).filter("id == \(id)").first
    }
    
    func getFiltring(by filter: String) -> Results<T> {
        return realm.objects(T.self).filter(filter)
    }
    
    func getOrdering(by property: String, ascendingly: Bool) -> Results<T> {
        return realm.objects(T.self).sorted(byKeyPath: property, ascending: ascendingly)
    }
    
    func insert(item: T) -> Bool {
        return ( try? realm.write { realm.add(item) } ) != nil
    }
    
    func delete(item: T) -> Bool {
        return ( try? realm.write { realm.delete(item) } ) != nil
    }
    
    func update(item: T) -> Bool {
        return ( try? realm.write { realm.add(item, update: .modified) } ) != nil
    }
    
}
