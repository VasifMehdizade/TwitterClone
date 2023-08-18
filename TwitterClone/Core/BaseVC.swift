//
//  BaseVC.swift
//  TwitterClone
//
//  Created by Vasif Mehdi on 17.08.23.
//

import UIKit

class BaseVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        navigationController?.interactivePopGestureRecognizer?.delegate = self
        setupView()
        setupLabels()
        setupAnchors()
    }
    
    // MARK: - Initialization Functions
    func setupView() {}
    func setupLabels() {}
    func setupAnchors() {}
}

extension BaseVC: UIGestureRecognizerDelegate {}
