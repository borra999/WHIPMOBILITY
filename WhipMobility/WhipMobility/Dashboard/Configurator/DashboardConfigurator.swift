//
//  DashboardDashboardConfigurator.swift
//  WhipMobility
//
//  Created by anjibabu9 on 28/12/2019.
//  Copyright © 2019 Bhargav Borra. All rights reserved.
//

import UIKit

class DashboardModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? DashboardViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: DashboardViewController) {

        let router = DashboardRouter()

        let presenter = DashboardPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = DashboardInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
