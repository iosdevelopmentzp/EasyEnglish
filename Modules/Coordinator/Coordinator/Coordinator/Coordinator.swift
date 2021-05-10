//
//  Coordinator.swift
//  Coordinator
//
//  Created by Dmitriy Vorko on 25.04.2021.
//  Copyright © 2020 Dmitriy Vorko. All rights reserved.
//

import Foundation

public protocol Coordinator: AnyObject {
    var children: [Coordinator] { get set }
    var parent: Coordinator? { get set }

    func add(child: Coordinator)
    func remove(child: Coordinator)
    func childDidFinish(_ child: Coordinator?)
    func start()
}

public extension Coordinator {
    func add(child: Coordinator) {
        child.parent = self
        children.append(child)
    }

    func remove(child: Coordinator) {
        children = children.filter { $0 !== child }
    }

    func childDidFinish(_ child: Coordinator?) {
        parent?.childDidFinish(self)
        guard let child = child else { return }
        remove(child: child)
    }
}
