//
//  DashboardDashboardPresenter.swift
//  WhipMobility
//
//  Created by anjibabu9 on 28/12/2019.
//  Copyright © 2019 Bhargav Borra. All rights reserved.
//

class DashboardPresenter: DashboardModuleInput, DashboardViewOutput, DashboardInteractorOutput {

    weak var view: DashboardViewInput!
    var interactor: DashboardInteractorInput!
    var router: DashboardRouterInput!

    func viewIsReady() {

    }
}
