//
//  Coordinator+Extensions.swift
//  Coordinator
//
//  Created by Dmytro Yantsybaiev on 29.01.2025.
//

import Coordinator

public extension Coordinator {

    func append(child coordinator: any Coordinator) {
        childCoordinators.append(coordinator)
    }

    func remove(child coordinator: any Coordinator) -> Coordinator? {
        guard let index = childCoordinators.firstIndex(where: { $0 === coordinator }) else {
            return nil
        }

        return childCoordinators.remove(at: index)
    }

    func removeAllChildCoordinators() {
        childCoordinators.removeAll()
    }

    func find<T: Coordinator>(first: T.Type) -> T? {
        childCoordinators.first { $0 is T } as? T
    }

    func find<T: Coordinator>(last: T.Type) -> T? {
        childCoordinators.last { $0 is T } as? T
    }
}
