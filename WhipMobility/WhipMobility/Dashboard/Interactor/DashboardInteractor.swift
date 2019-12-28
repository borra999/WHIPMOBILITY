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

    func getDashBoardData() {
        let str = URL(string: "https://skyrim.whipmobility.io/v10/analytic/dashboard/operation/mock?scope=ALL")
        DataManager.getDashBoardData(url: str!, type: DashboardModel.self) { (error, dashBoardData) in
            if error != nil{}else{
                if let dashBoardModel = dashBoardData{
                   self.output.dashBoardList(dashBoardModel: dashBoardModel)
                }
            }
        }
    }
}
