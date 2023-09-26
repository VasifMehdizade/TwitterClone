//
//  SceneDelegate.swift
//  TwitterClone
//
//  Created by Vasif Mehdi on 17.08.23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
        
        var window     : UIWindow?
        var coordinator: AppCoordinator?

        func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

            guard let scene = (scene as? UIWindowScene) else { return }
            window = UIWindow(windowScene: scene)
            coordinator = AppCoordinator(navigationController: UINavigationController())
            coordinator?.start(window: window!)
    }

    func sceneDidDisconnect(_ scene: UIScene) { }

    func sceneDidBecomeActive(_ scene: UIScene) { }

    func sceneWillResignActive(_ scene: UIScene) { }

    func sceneWillEnterForeground(_ scene: UIScene) { }

    func sceneDidEnterBackground(_ scene: UIScene) { }
}
