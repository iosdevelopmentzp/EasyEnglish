//
//  AuthorizationCoordinator.swift
//  Coordinators
//
//  Created by Dmitriy Vorko on 25.04.2021.
//  Copyright © 2020 Dmitriy Vorko. All rights reserved.
//

import Authorization
import Coordinator
import Foundation

internal class AuthorizationCoordinator: BaseNavigationCoordinator, AuthorizationCoordinatorType {
    override func start() {
        let viewModel = AuthorizationViewModel()
        let viewController = AuthorizationViewController(viewModel: viewModel)
        presenter.pushViewController(viewController, animated: true)
    }
}
