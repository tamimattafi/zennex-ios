//
// Created by Zennex2 on 17/03/2020.
// Copyright (c) 2020 tamimattafi. All rights reserved.
//

import Foundation


class CallBack<T> {
    
    var successListeners: [(T) -> Void] = []

    var failureListeners: [(String) -> Void] = []

    private var action: (() -> Void)? = nil

    func addSuccessListener(onSuccess: @escaping (T) -> Void) {
        successListeners.append(onSuccess)
    }

    func addFailureListener(onFailure: @escaping (String) -> Void) {
        failureListeners.append(onFailure)
    }

    func setAction(action: @escaping () -> Void) {
        self.action = action
    }

    func start() {
        action?()
    }

    func cancel() {
        successListeners.removeAll()
        failureListeners.removeAll()
    }

}
