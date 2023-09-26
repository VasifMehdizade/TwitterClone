//
//  EntryController.swift
//  TwitterClone
//
//  Created by Vasif Mehdi on 17.08.23.
//

import UIKit

class EntryController: BaseVC {
    
    lazy var iconView: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.image = UIImage(named: "logo-white")
        return image
    }()

    lazy var infoLabel: CustomLabel = {
        let infoLabel = CustomLabel(text: "See what's happening in the world right now.",
                                    systemFont: UIFont.boldSystemFont(ofSize: 32),
                                    alignment: .justified, numberOfLines: 2)
        return infoLabel
        
    }()
    
//    lazy var termsLabel: CustomLabel = {
//        let termsLabel = CustomLabel(text: "By signing up, you agree to our Terms, Privacy Policy, and Cookie Use",
//                                    textColor: .gray,
//                                    systemFont: UIFont.boldSystemFont(ofSize: 14),
//                                    alignment: .left, numberOfLines: 2)
//        return termsLabel
//    }()
    
    lazy var textView: UITextView = {
        let textView = UITextView()
        textView.contentInsetAdjustmentBehavior = .automatic
        textView.center = self.view.center
        textView.textAlignment = NSTextAlignment.justified
        textView.textColor = UIColor.white
        textView.backgroundColor = UIColor.white
        textView.isUserInteractionEnabled = true
        textView.isEditable = false
        return textView
    }()
    
    lazy var googleButton: CustomButton = {
        let button = CustomButton(backgroundcolor: .white,
                                  title: "Continue with Google",
                                  titleColor: .black,
                                  systemFont: UIFont(name: "Droid Sans", size: 20),
                                  size: 20, cornerRadius: 30)
        return button
    }()
    
    lazy var appleButton: CustomButton = {
        let button = CustomButton(backgroundcolor: .white,
                                  title: "Continue with Apple",
                                  titleColor: .black,
                                  systemFont: UIFont(name: "Droid Sans", size: 20),
                                  size: 20, cornerRadius: 30)
        return button
    }()
    
    lazy var createAccountButton: CustomButton = {
        let button = CustomButton(backgroundcolor: .white,
                                  title: "Create Account",
                                  titleColor: .black,
                                  size: 20, cornerRadius: 30)
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
        let loginButton = CustomButton(backgroundcolor: .clear,
                                       title: "Log in",
                                       titleColor: .blue,
                                       size: 14)
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
        stackView.spacing = 22
        stackView.isUserInteractionEnabled = true
        stackView.axis = .vertical
        return stackView
    }()
    
    
    override func setupView() {
        super.setupView()
        view.addSubview(iconView)
        view.addSubview(infoLabel)
        view.addSubview(textView)
        view.addSubview(createAccountButton)
        view.addSubview(haveAnAccountAlreadyLabel)
        view.addSubview(loginButton)
        view.addSubview(buttonStackView)
        
        let attributedString = NSMutableAttributedString(string: "By signing up, you agree to the Terms of Service and Privacy Policy, including Cookie Use.")
        attributedString.addAttribute(.link, value: "https://www.apple.com", range: NSRange(location: 32, length: 16))

        textView.attributedText = attributedString
    }
    
    override func setupAnchors() {
        super.setupAnchors()
        iconView.centerXToSuperview()
        iconView.anchor(top: view.safeAreaLayoutGuide.topAnchor, padding: .init(top: 12), size: .init(width: 20, height: 20))
        
        infoLabel.anchor(top: view.topAnchor,leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 180, leading: 30, trailing: -30), size: .init(width: 0, height: 80))
        infoLabel.centerXToSuperview()
        
        googleButton.anchorSize(.init(width: 0, height: 60))
        appleButton.anchorSize(.init(width: 0, height: 60))
        createAccountButton.anchorSize(.init(width: 0, height: 60))

        stackView.anchor(leading: infoLabel.leadingAnchor, trailing: infoLabel.trailingAnchor,padding: .init(bottom: 0), size: .init(width: 0, height: 128))
        
        buttonStackView.anchor(leading: infoLabel.leadingAnchor, bottom: textView.topAnchor, trailing: infoLabel.trailingAnchor,padding: .init(bottom: -12), size: .init(width: 0, height: 210))
        
        textView.anchor(leading: infoLabel.leadingAnchor, bottom: haveAnAccountAlreadyLabel.topAnchor, trailing: stackView.trailingAnchor, padding: .init(top:12, leading: 0, bottom: -60, trailing: -0), size: .init(width: 0, height: 40))
        
        haveAnAccountAlreadyLabel.anchor(leading: infoLabel.leadingAnchor, bottom: view.bottomAnchor, padding: .init(leading: 12, bottom: -50, trailing: -0), size: .init(width: 200, height: 20))
        
        loginButton.anchor(top: haveAnAccountAlreadyLabel.topAnchor, leading: haveAnAccountAlreadyLabel.trailingAnchor, bottom: haveAnAccountAlreadyLabel.bottomAnchor, size: .init(width: 50, height: 0))
    }
}

extension EntryController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        UIApplication.shared.open(URL)
        return false
    }
}
