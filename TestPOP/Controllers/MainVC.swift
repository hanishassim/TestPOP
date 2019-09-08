//
//  MainVC.swift
//  TestPOP
//
//  Created by Hanis Hassim on 08/09/2019.
//  Copyright © 2019 A2361. All rights reserved.
//

import UIKit

protocol MainVCDelegate: NSObject {
    
}

class MainVC: UIViewController {
    @IBOutlet weak var testButton: UIButton!
    
    let viewModel: MainVCViewModelType = MainVCViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupListener()
    }
    
    fileprivate func setupView() {
        testButton.addTarget(self, action: #selector(triggerButton), for: UIControl.Event.touchUpInside)
    }
    
    fileprivate func setupListener() {
    }
    
    @objc fileprivate func triggerButton() {
        print("Hello world!")
    }
}
