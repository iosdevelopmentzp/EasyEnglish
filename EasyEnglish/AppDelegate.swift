//
//  AppDelegate.swift
//  EasyEnglish
//
//  Created by Dmytro Vorko on 25.04.2021.
//

import Coordinator
import Coordinators
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    // MARK: - Properties

    internal var window: UIWindow?

    private var appCoordinator: Coordinator?

    // MARK: - Functions

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        startAppCoordinator()
        return true
    }

    private func startAppCoordinator() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()

        let appCoordinator = CoordinatorsFactory().makeAppCoordinator(
            presenter: navigationController
        )
        self.appCoordinator = appCoordinator

        appCoordinator.start()
    }
}
