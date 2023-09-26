//
//  NavigationBarView.swift
//  TwitterClone
//
//  Created by Vasif Mehdi on 21.08.23.
//

import UIKit

class NavigationBarView: UIView {
    
    var title: String? {
        didSet {
            textLabel.text = title
        }
    }
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cancel", for: .normal)
        return button
    }()
    
    required init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        
    }
    
//    @objc func backButtonClicked() {
//        let nav = UIApplication.getPresentedViewController() as! BaseNC
//        nav.popViewController(animated: true)
//    }
    
}
