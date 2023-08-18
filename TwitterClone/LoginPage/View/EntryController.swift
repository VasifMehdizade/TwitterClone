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
                                    systemFont: UIFont.boldSystemFont(ofSize: 32),
                                    alignment: .justified, numberOfLines: 2)
        return infoLabel
    }()
    
    lazy var continueWithGoogleButton: CustomButton = {
        let button = CustomButton(backgroundcolor: .blue, title: "Continue with Google", titleColor: .white, size: 20, cornerRadius: 20)
        return continueWithGoogleButton
    }()
    
    lazy var continueWithAppleButton: CustomButton = {
        let button = CustomButton(backgroundcolor: .blue, title: "Continue with Apple", titleColor: .white, size: 20, cornerRadius: 20)
        return button
    }()
    
    lazy var createAccountButton: CustomButton = {
        let button = CustomButton(backgroundcolor: .blue, title: "Create Account", titleColor: .white, size: 20, cornerRadius: 20)
        return button
    }()
    
    lazy var haveAnAccountAlreadyLabel: CustomLabel = {
        let haveAnAccountAlreadyLabel = CustomLabel(text: "Have an account already?",
                                    textColor: .gray,
                                    systemFont: UIFont.boldSystemFont(ofSize: 16),
                                    alignment: .left, numberOfLines: 0)
        return haveAnAccountAlreadyLabel
    }()
    
    lazy var loginButton: CustomButton = {
        let loginButton = CustomButton(backgroundcolor: .clear, title: "Log in", titleColor: .blue, size: 14)
        return loginButton
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [continueWithGoogleButton ,continueWithAppleButton])
        stackView.alignment = .fill
        stackView.spacing = 8
        stackView.isUserInteractionEnabled = true
        stackView.axis = .vertical
        return stackView
    }()
    
    override func setupView() {
        super.setupView()
        view.addSubview(infoLabel)
        view.addSubview(createAccountButton)
        view.addSubview(haveAnAccountAlreadyLabel)
        view.addSubview(loginButton)
        view.addSubview(stackView)
    }
    
    override func setupAnchors() {
        super.setupAnchors()
        infoLabel.anchor(top: view.topAnchor,leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 180, leading: 30, trailing: -30), size: .init(width: 0, height: 80))
        infoLabel.centerXToSuperview()
        createAccountButton.anchor(top: infoLabel.bottomAnchor, leading: infoLabel.leadingAnchor, trailing: infoLabel.trailingAnchor,padding: .init(top: 8), size: .init(width: 0, height: 34))
        
        haveAnAccountAlreadyLabel.anchor(leading: infoLabel.leadingAnchor, bottom: view.bottomAnchor, padding: .init(leading: 12, bottom: -50, trailing: -0), size: .init(width: 180, height: 20))
        
        loginButton.anchor(top: haveAnAccountAlreadyLabel.topAnchor, leading: haveAnAccountAlreadyLabel.trailingAnchor, bottom: haveAnAccountAlreadyLabel.bottomAnchor, size: .init(width: 50, height: 0))
    }
}
