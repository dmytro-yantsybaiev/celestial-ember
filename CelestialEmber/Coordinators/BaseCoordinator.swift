//
//  BaseCoordinator.swift
//  CelestialEmber
//
//  Created by Dmytro Yantsybaiev on 27.01.2025.
//

import UIKit
import Coordinator
import CoordinatorLive

class BaseCoordinator: Coordinator {

    var childCoordinators = [any Coordinator]()

    let navigationController: UINavigationController

    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        // default implementation
    }
}
