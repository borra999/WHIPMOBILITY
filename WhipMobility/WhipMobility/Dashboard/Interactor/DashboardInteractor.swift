//
//  DashboardDashboardInteractor.swift
//  WhipMobility
//
//  Created by anjibabu9 on 28/12/2019.
//  Copyright © 2019 Bhargav Borra. All rights reserved.
//

import UIKit
class DashboardInteractor: DashboardInteractorInput {

    weak var output: DashboardInteractorOutput!
    func getdashBoardList() {
        let str = URL(string: "https://skyrim.whipmobility.io/v10/analytic/dashboard/operation/mock?scope=ALL")
        DataManager.getDashboardList(url: str!, type: DashboardModel.self) { (error, dashBoardModel) in
            if error != nil{}else{
                if let dashBoardMdl = dashBoardModel {
                    self.output.dashBoardList(dashBoardModel: dashBoardMdl)
                }
            }
        }
    }
}
