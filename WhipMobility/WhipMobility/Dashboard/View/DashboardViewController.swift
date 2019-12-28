//
//  DashboardDashboardViewController.swift
//  WhipMobility
//
//  Created by anjibabu9 on 28/12/2019.
//  Copyright © 2019 Bhargav Borra. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController, DashboardViewInput {

    var output: DashboardViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: DashboardViewInput
    func setupInitialState() {
    }
}
