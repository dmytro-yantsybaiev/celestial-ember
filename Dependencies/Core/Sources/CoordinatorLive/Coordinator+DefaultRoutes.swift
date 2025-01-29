//
//  Coordinator+Routes.swift
//  Coordinator
//
//  Created by Dmytro Yantsybaiev on 27.01.2025.
//

import UIKit
import Coordinator

public extension Coordinator {

    // MARK: - FinishFlowRoute

    func finishFlow() {
        // default implementation
    }

    // MARK: - ResetFlowRoute

    func resetFlow() {
        // default implementation
    }

    // MARK: - SetRootRoute

    func set(root viewController: UIViewController, animated: Bool) {
        set(root: viewController, animated: animated, isNavigationBarHidden: false)
    }

    func set(root viewController: UIViewController, animated: Bool, isNavigationBarHidden: Bool) {
        navigationController.setViewControllers([viewController], animated: animated)
        navigationController.isNavigationBarHidden = isNavigationBarHidden
    }

    func set(root viewControllers: [UIViewController], animated: Bool) {
        set(root: viewControllers, animated: animated, isNavigationBarHidden: false)
    }

    func set(root viewControllers: [UIViewController], animated: Bool, isNavigationBarHidden: Bool) {
        navigationController.setViewControllers(viewControllers, animated: animated)
        navigationController.isNavigationBarHidden = isNavigationBarHidden
    }

    // MARK: - PushRoute

    func push(_ viewController: UIViewController, animated: Bool) {
        push(viewController, animated: animated, hidesBottomBarWhenPushed: false)
    }

    func push(_ viewController: UIViewController, animated: Bool, hidesBottomBarWhenPushed: Bool) {
        viewController.hidesBottomBarWhenPushed = hidesBottomBarWhenPushed
        navigationController.pushViewController(viewController, animated: animated)
    }

    // MARK: - PresentRoute

    func present(_ viewController: UIViewController, animated: Bool) {
        present(viewController, animated: animated, completion: nil)
    }

    func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)?) {
        navigationController.present(viewController, animated: animated, completion: completion)
    }

    // MARK: - PopRoute

    func pop(animated: Bool) -> UIViewController? {
        navigationController.popViewController(animated: animated)
    }

    func pop(to viewController: UIViewController, animated: Bool) -> [UIViewController]? {
        navigationController.popToViewController(viewController, animated: animated)
    }

    func popToRoot(animated: Bool) -> [UIViewController]? {
        navigationController.popToRootViewController(animated: animated)
    }

    // MARK: - DismissRoute

    func dismiss(animated: Bool) {
        dismiss(animated: animated, completion: nil)
    }

    func dismiss(animated: Bool, completion: (() -> Void)?) {
        navigationController.dismiss(animated: animated, completion: completion)
    }

    // MARK: - ReplaceTopRoute

    func replaceTop(with viewController: UIViewController, animated: Bool) -> UIViewController {
        replaceTop(with: viewController, animated: animated, isNavigationBarHidden: false)
    }

    func replaceTop(with viewController: UIViewController, animated: Bool, isNavigationBarHidden: Bool) -> UIViewController {
        var viewControllers = navigationController.viewControllers
        let replacedViewController = viewControllers.removeLast()
        viewControllers.append(viewController)
        navigationController.setViewControllers(viewControllers, animated: animated)
        navigationController.isNavigationBarHidden = isNavigationBarHidden
        return replacedViewController
    }
}
