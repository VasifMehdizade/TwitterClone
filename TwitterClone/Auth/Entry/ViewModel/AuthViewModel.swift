//
//  AuthViewModel.swift
//  TwitterClone
//
//  Created by Vasif Mehdi on 27.09.23.
//

import Foundation

class AuthViewModel {

    var coordinator: AppCoordinator?
   
    init(coordinator: AppCoordinator?) {
        self.coordinator = coordinator
    }
    
    //MARK: Coordinator
    
    func showLoginPage() {
//        coordinator?.showRegister(viewModel: self)
    }
    
    func showRegister() {
        coordinator?.showRegister(viewModel: self)
    }
}
