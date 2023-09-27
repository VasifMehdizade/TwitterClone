//
//  LoginController.swift
//  TwitterClone
//
//  Created by Vasif Mehdi on 17.08.23.
//

import UIKit

protocol LoginControllerDelegate: AnyObject {
    func didFinishAuth()
}

class LoginController: BaseVC {

    var coordinator : AppCoordinator?
    
    weak var delegate : (LoginControllerDelegate)?
}
