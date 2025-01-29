//
//  RootCoordinator.swift
//  CelestialEmber
//
//  Created by Dmytro Yantsybaiev on 26.01.2025.
//

import UIKit
import SwiftUI

final class RootCoordinator: BaseCoordinator {

    let window: UIWindow

    init(_ window: UIWindow) {
        let viewModel = RootViewModel()
        let view = RootView(viewModel)
        let viewController = RootViewController(rootView: view)
        let navigationController = UINavigationController(rootViewController: viewController)

        self.window = window
        super.init(navigationController)
    }

    override func start() {
        super.start()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
