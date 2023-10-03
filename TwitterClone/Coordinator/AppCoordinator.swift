//
//  AppCoordinator.swift
//  TwitterClone
//
//  Created by Vasif Mehdi on 21.08.23.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        navigationController.setNavigationBarHidden(true, animated: false)
    }

    func showRegister(viewModel: AuthViewModel) {
        let controller = RegisterController(viewModel: viewModel)
        navigationController.pushViewController(controller, animated: true)
    }

    func backLogin() {
        navigationController.popViewController(animated: true)
    }
    
    func showLoginViewController(window: UIWindow) {
        DefaultsStorage.set(bool: false, by: .UD_KEY_LOGIN)
        DefaultsStorage.delete(by: .UD_KEY_USER)
        window.rootViewController?.dismiss(animated: false, completion: nil)
        window.rootViewController = nil
        window.rootViewController = UINavigationController(rootViewController: EntryController(viewModel: AuthViewModel(coordinator: self)))
        window.makeKeyAndVisible()
    }

    func showLogin(delegate: LoginControllerDelegate?) {
        let controller      = LoginController()
        controller.delegate = delegate
        let nav = UINavigationController(rootViewController: controller)
        nav.modalPresentationStyle = .fullScreen
        navigationController.present(nav, animated: false)
    }
    
    func popViewController() {
        navigationController.popViewController(animated: true)
    }
    
    func popToRoot() {
        navigationController.popToRootViewController(animated: true)
    }

}
