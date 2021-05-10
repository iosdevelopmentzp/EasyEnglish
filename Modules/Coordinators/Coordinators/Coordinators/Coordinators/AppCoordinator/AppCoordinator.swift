//
//  AppCoordinator.swift
//  Coordinators
//
//  Created by Dmitriy Vorko on 25.04.2021.
//  Copyright © 2020 Dmitriy Vorko. All rights reserved.
//

import Coordinator
import Foundation

internal class AppCoordinator: BaseNavigationCoordinator, AppCoordinatorType {
    override func start() {
        let authCoordinator = CoordinatorsFactory().makeAppCoordinator(
            presenter: presenter
        )

        add(child: authCoordinator)

        authCoordinator.start()
    }
}
