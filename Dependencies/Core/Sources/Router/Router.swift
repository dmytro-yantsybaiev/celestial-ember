//
//  Router.swift
//  Router
//
//  Created by Dmytro Yantsybaiev on 27.01.2025.
//

import UIKit

public enum Router {

    // MARK: - FinishFlowRoute

    @MainActor
    public protocol FinishFlowRoute: AnyObject {

        func finishFlow()
    }

    // MARK: - ResetFlowRoute

    @MainActor
    public protocol ResetFlowRoute: AnyObject {

        func resetFlow()
    }

    // MARK: - SetRootRoute

    @MainActor
    public protocol SetRootRoute: AnyObject {

        func set(root viewController: UIViewController, animated: Bool)
        func set(root viewController: UIViewController, animated: Bool, isNavigationBarHidden: Bool)
        func set(root viewControllers: [UIViewController], animated: Bool)
        func set(root viewControllers: [UIViewController], animated: Bool, isNavigationBarHidden: Bool)
    }

    // MARK: - PushRoute

    @MainActor
    public protocol PushRoute: AnyObject {

        func push(_ viewController: UIViewController, animated: Bool)
        func push(_ viewController: UIViewController, animated: Bool, hidesBottomBarWhenPushed: Bool)
    }

    // MARK: - PresentRoute

    @MainActor
    public protocol PresentRoute {

        func present(_ viewController: UIViewController, animated: Bool)
        func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)?)
    }

    // MARK: - PopRoute

    @MainActor
    public protocol PopRoute {

        @discardableResult func pop(animated: Bool) -> UIViewController?
        @discardableResult func pop(to viewController: UIViewController, animated: Bool) -> [UIViewController]?
        @discardableResult func popToRoot(animated: Bool) -> [UIViewController]?
    }

    // MARK: - DismissRoute

    @MainActor
    public protocol DismissRoute {

        func dismiss(animated: Bool)
        func dismiss(animated: Bool, completion: (() -> Void)?)
    }

    // MARK: - ReplaceTopRoute

    @MainActor
    public protocol ReplaceTopRoute {

        @discardableResult func replaceTop(with viewController: UIViewController, animated: Bool) -> UIViewController
        @discardableResult func replaceTop(with viewController: UIViewController, animated: Bool, isNavigationBarHidden: Bool) -> UIViewController
    }
}
