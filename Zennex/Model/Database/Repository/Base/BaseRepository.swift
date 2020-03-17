//
//  BaseRepository.swift
//  Zennex
//
//  Created by Zennex on 17/03/2020.
//  Copyright © 2020 tamimattafi. All rights reserved.
//

import Foundation

class BaseRepository<T> {
        
    private let dao: BaseDao
    
    init(dao: BaseDao) {
        self.dao = dao
    }
    
    func loadData(sorting ascendingly: Bool) -> [T] {
        return dao.getAll(using: "")
    }
}
