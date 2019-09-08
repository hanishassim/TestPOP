//
//  MainVCViewModel.swift
//  TestPOP
//
//  Created by Hanis Hassim on 08/09/2019.
//  Copyright © 2019 A2361. All rights reserved.
//

import Foundation

protocol MainVCViewModelInputs {
    func didClickButton()
}

protocol MainVCViewModelOutputs {
    var titleLabel: Box<String?> { get }
    
    var notifyDelegateDidClickButton: Box<Void?> { get }
}

protocol MainVCViewModelType {
    var inputs: MainVCViewModelInputs { get }
    var outputs: MainVCViewModelOutputs { get }
}

class MainVCViewModel: MainVCViewModelInputs, MainVCViewModelOutputs, MainVCViewModelType {
    var inputs: MainVCViewModelInputs {
        return self
    }
    
    var outputs: MainVCViewModelOutputs {
        return self
    }
    
    func didClickButton() {
        outputs.notifyDelegateDidClickButton.value = ()
    }
    
    var titleLabel: Box<String?> = Box(nil)
    
    let notifyDelegateDidClickButton: Box<Void?> = Box(nil)
}
