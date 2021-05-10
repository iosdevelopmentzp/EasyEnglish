//
//  CoordinatorsFactoryProtocol.swift
//  Coordinators
//
//  Created by Dmitriy Vorko on 25.04.2021.
//  Copyright © 2020 Dmitriy Vorko. All rights reserved.
//

import Foundation
import UIKit

public protocol CoordinatorsFactoryProtocol {
    func makeAppCoordinator(presenter: UINavigationController) -> AuthorizationCoordinatorType
}
