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
    
    lazy var termsLabel: CustomLabel = {
        let termsLabel = CustomLabel(text: "By signing up, you agree to our Terms, Privacy Policy, and Cookie Use",
                                    textColor: .gray,
                                    systemFont: UIFont.boldSystemFont(ofSize: 14),
                                    alignment: .left, numberOfLines: 2)
        return termsLabel
    }()
    
    lazy var googleButton: CustomButton = {
        let button = CustomButton(backgroundcolor: .blue, title: "Continue with Google", titleColor: .white,  systemFont: UIFont(name: "Droid Sans", size: 20), size: 20, cornerRadius: 20)
        return button
    }()
    
    lazy var appleButton: CustomButton = {
        let button = CustomButton(backgroundcolor: .blue, title: "Continue with Apple", titleColor: .white,  systemFont: UIFont(name: "Droid Sans", size: 20), size: 100, cornerRadius: 20)
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
        let stackView = UIStackView(arrangedSubviews: [appleButton, googleButton])
        stackView.alignment = .fill
        stackView.spacing = 8
        stackView.isUserInteractionEnabled = true
        stackView.axis = .vertical
        return stackView
    }()
    
    lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [stackView, createAccountButton])
        stackView.alignment = .fill
        stackView.spacing = 16
        stackView.isUserInteractionEnabled = true
        stackView.axis = .vertical
        return stackView
    }()
    
    override func setupView() {
        super.setupView()
        view.addSubview(infoLabel)
        view.addSubview(termsLabel)
        view.addSubview(createAccountButton)
        view.addSubview(haveAnAccountAlreadyLabel)
        view.addSubview(loginButton)
        view.addSubview(buttonStackView)
    }
    
    override func setupAnchors() {
        super.setupAnchors()
        infoLabel.anchor(top: view.topAnchor,leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 180, leading: 30, trailing: -30), size: .init(width: 0, height: 80))
        infoLabel.centerXToSuperview()
        
        buttonStackView.anchor(leading: infoLabel.leadingAnchor, bottom: termsLabel.topAnchor, trailing: infoLabel.trailingAnchor,padding: .init(bottom: -20), size: .init(width: 0, height: 150))
        
        termsLabel.anchor(leading: infoLabel.leadingAnchor, bottom: haveAnAccountAlreadyLabel.topAnchor, trailing: stackView.trailingAnchor, padding: .init(top:12, leading: 12, bottom: -60, trailing: -0), size: .init(width: 0, height: 40))
        
        haveAnAccountAlreadyLabel.anchor(leading: infoLabel.leadingAnchor, bottom: view.bottomAnchor, padding: .init(leading: 12, bottom: -50, trailing: -0), size: .init(width: 180, height: 20))
        
        loginButton.anchor(top: haveAnAccountAlreadyLabel.topAnchor, leading: haveAnAccountAlreadyLabel.trailingAnchor, bottom: haveAnAccountAlreadyLabel.bottomAnchor, size: .init(width: 50, height: 0))
    }
}
