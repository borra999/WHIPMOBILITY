//
//  DashboardDashboardInitializer.swift
//  WhipMobility
//
//  Created by anjibabu9 on 28/12/2019.
//  Copyright © 2019 Bhargav Borra. All rights reserved.
//

import UIKit

class DashboardModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var dashboardViewController: DashboardViewController!

    override func awakeFromNib() {

        let configurator = DashboardModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: dashboardViewController)
    }

}
