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
    }

    func start(window: UIWindow) {
        window.rootViewController = UINavigationController(rootViewController: EntryController())
        window.makeKeyAndVisible()
    }

    func showRegister() {
        let controller = RegisterController()
        navigationController.show(controller, sender: nil)
    }

    func backLogin() {
        navigationController.popViewController(animated: true)
    }

    func showLogin(delegate: LoginControllerDelegate?) {
        let controller      = LoginController()
        controller.delegate = delegate
        let nav = UINavigationController(rootViewController: controller)
        nav.modalPresentationStyle = .fullScreen

        navigationController.present(nav, animated: false)
    }

}
