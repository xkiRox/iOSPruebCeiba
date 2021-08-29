//
//  BaseViewHelperProtocol+Extension.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 29/08/21.
//

import SwiftUI

extension BaseViewHelperProtocol {
    private var topViewController: UIViewController? {
        let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first

        guard var topController = keyWindow?.rootViewController else {
            return nil
        }
        while let presentedViewController = topController.presentedViewController {
            topController = presentedViewController
        }
        
        return topController
    }
    
    func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        topViewController?.dismiss(animated: flag, completion: completion)
    }
}
