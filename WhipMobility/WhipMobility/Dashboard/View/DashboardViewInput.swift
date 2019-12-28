//
//  DashboardDashboardViewInput.swift
//  WhipMobility
//
//  Created by anjibabu9 on 28/12/2019.
//  Copyright © 2019 Bhargav Borra. All rights reserved.
//

protocol DashboardViewInput: class {

    /**
        @author anjibabu9
        Setup initial state of the view
    */

    func setupInitialState()
    func loadViewWithData(dashBoardMdl: DashboardModel)
}
