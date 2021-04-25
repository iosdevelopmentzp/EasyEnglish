//
//  CoordinatorsFactory.swift
//  Coordinators
//
//  Created by Dmitriy Vorko on 25.04.2021.
//  Copyright © 2020 Dmitriy Vorko. All rights reserved.
//

import Foundation

public class CoordinatorsFactory: CoordinatorsFactoryProtocol {
    // MARK: - Constructor

    public init() {}

    // MARK: - CoordinatorsFactoryProtocol

    public func makeAppCoordinator(presenter: UINavigationController) -> AuthorizationCoordinatorType {
        return AuthorizationCoordinator(presenter: presenter)
    }
}
