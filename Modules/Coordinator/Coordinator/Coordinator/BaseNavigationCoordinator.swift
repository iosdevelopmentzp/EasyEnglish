//
//  BaseNavigationCoordinator.swift
//  Coordinator
//
//  Created by Dmitriy Vorko on 25.04.2021.
//  Copyright © 2020 Dmitriy Vorko. All rights reserved.
//

import Foundation
import UIKit

open class BaseNavigationCoordinator: Coordinator {
    // MARK: - Properties
    
    private let presenter: UINavigationController
    
    public var children: [Coordinator] = []
    public var parent: Coordinator?
    
    // MARK: - Constructor
    
    public init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    // MARK: - Functions

    open func start() {
        fatalError("Method must be implemented")
    }
}
