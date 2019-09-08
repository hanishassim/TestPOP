//
//  Box.swift
//  TestPOP
//
//  Created by Hanis Hassim on 08/09/2019.
//  Copyright © 2019 A2361. All rights reserved.
//

import Foundation

class Box<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    func bindAndFire(_ listener: Listener?) {
        self.bind(listener)
        
        listener?(value)
    }
}
