//
//  AuthorizationViewController.swift
//  Coordinator
//
//  Created by Dmitriy Vorko on 25.04.2021.
//  Copyright © 2020 Dmitriy Vorko. All rights reserved.
//

import Foundation
import SnapKit
import UIKit

public class AuthorizationViewController: UIViewController {
    // MARK: - Properties

    private let centerView = UIView()

    private let viewModel: AuthorizationViewModel

    // MARK: - Constructor

    public init(viewModel: AuthorizationViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Life Cycle

    override public func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        setupView()
    }

    // MARK: - Private Functions

    private func setupConstraints() {
        view.addSubview(centerView)

        centerView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.size.equalTo(
                CGSize(width: 150, height: 150)
            )
        }
    }

    private func setupView() {
        centerView.backgroundColor = UIColor.green
        centerView.layer.cornerRadius = 30
        centerView.layer.masksToBounds = true
    }
}
