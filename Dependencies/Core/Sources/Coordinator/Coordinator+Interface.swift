//
//  Coordinator.swift
//  Coordinator
//
//  Created by Dmytro Yantsybaiev on 27.01.2025.
//

import UIKit
import Router

@MainActor
public protocol Coordinator: AnyObject, DefaultRoutes {

    var childCoordinators: [any Coordinator] { get set }
    var navigationController: UINavigationController { get }

    func start()
}
