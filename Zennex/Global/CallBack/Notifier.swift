//
// Created by Zennex2 on 17/03/2020.
// Copyright (c) 2020 tamimattafi. All rights reserved.
//

import Foundation

class Notifier<T> {
    
    private let callBack: CallBack<T>

    init(callBack: CallBack<T>) {
        self.callBack = callBack
    }

    func notifySuccess(data: T) {
        callBack.successListeners.forEach { (onSuccess: (T) -> Void) in
            onSuccess(data)
        }
    }

    func notifyFailure(message: String) {
        callBack.failureListeners.forEach { (onFailure: (String) -> Void) in
            onFailure(message)
        }
    }

}
