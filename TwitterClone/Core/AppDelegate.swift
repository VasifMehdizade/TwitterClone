//
//  AppDelegate.swift
//  TwitterClone
//
//  Created by Vasif Mehdi on 17.08.23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var coordinator: AppCoordinator?
    
    static let shared = UIApplication.shared.delegate as! AppDelegate

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.overrideUserInterfaceStyle = .light
        coordinator = AppCoordinator(navigationController: UINavigationController())
        
        if DefaultsStorage.getBool(by: .UD_KEY_LOGIN) {
            startMain()
        } else {
            startLogin()
        }
        return true
    }
    
    func startLogin() {
        if let window = window {
            coordinator?.showLoginViewController(window: window)
        }
    }

    func startMain() {
        DefaultsStorage.set(bool: true, by: .UD_KEY_LOGIN)
        self.window?.rootViewController?.dismiss(animated: false, completion: nil)
        self.window?.rootViewController = nil
        let tabbarController = MainTabBarController()
        window?.rootViewController = tabbarController
        window?.makeKeyAndVisible()
    }

}
