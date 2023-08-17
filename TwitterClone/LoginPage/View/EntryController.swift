//
//  EntryController.swift
//  TwitterClone
//
//  Created by Vasif Mehdi on 17.08.23.
//

import UIKit

class EntryController: BaseVC {

    lazy var infoLabel: CustomLabel = {
        let infoLabel = CustomLabel(text: "See what's happening in the world right now.",
                                    systemFont: UIFont.boldSystemFont(ofSize: 30),
                                    alignment: .center, numberOfLines: 2)
        return infoLabel
    }()
    
    lazy var createAccountButton: CustomButton = {
        let createButton = CustomButton(backgroundcolor: .blue, title: "Create Account", titleColor: .white, size: 20, cornerRadius: 20)
        return createButton
    }()
    
    lazy var haveAnAccountAlreadyLabel: CustomLabel = {
        let haveAnAccountAlreadyLabel = CustomLabel(text: "Have an account already?",
                                    textColor: .gray,
                                    systemFont: UIFont.boldSystemFont(ofSize: 14),
                                    alignment: .left, numberOfLines: 0)
        return haveAnAccountAlreadyLabel
    }()
    
    lazy var loginButton: CustomButton = {
        let loginButton = CustomButton(backgroundcolor: .clear, title: "Log in", titleColor: .blue, size: 14)
        return loginButton
    }()
    
    override func setupView() {
        super.setupView()
        view.addSubview(infoLabel)
        view.addSubview(createAccountButton)
        view.addSubview(haveAnAccountAlreadyLabel)
        view.addSubview(loginButton)
    }
}
