//
//  LaunchPresenter.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

final class LaunchPresenter {
    private let router: LaunchRouter
    private let interactor: LaunchInteractorProtocol
    
    init(interactor: LaunchInteractorProtocol, router: LaunchRouter) {
        self.interactor = interactor
        self.router = router
    }
}

extension LaunchPresenter: LaunchPresentationProtocol {
    func launch() {
        interactor.launch { [weak self] _ in
            self?.router.initApp()
        }
    }
}
