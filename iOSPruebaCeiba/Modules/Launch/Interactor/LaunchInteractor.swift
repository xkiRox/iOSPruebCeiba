//
//  LaunchInteractor.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

class LaunchInteractor {
    init() { }
}

extension LaunchInteractor: LaunchInteractorProtocol {
    func launch(completion: ((Bool) -> Void)? = nil) {
        completion?(true)
    }
}

