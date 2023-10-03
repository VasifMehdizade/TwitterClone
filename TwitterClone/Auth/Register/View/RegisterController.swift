//
//  RegisterController.swift
//  TwitterClone
//
//  Created by Vasif Mehdi on 27.09.23.
//

import UIKit

class RegisterController: BaseVC {
    
    var viewModel: AuthViewModel!
    
    init(viewModel: AuthViewModel?) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
    }
}
