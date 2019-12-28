//
//  DashboardDashboardConfiguratorTests.swift
//  WhipMobility
//
//  Created by anjibabu9 on 28/12/2019.
//  Copyright © 2019 Bhargav Borra. All rights reserved.
//

import XCTest

class DashboardModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = DashboardViewControllerMock()
        let configurator = DashboardModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "DashboardViewController is nil after configuration")
        XCTAssertTrue(viewController.output is DashboardPresenter, "output is not DashboardPresenter")

        let presenter: DashboardPresenter = viewController.output as! DashboardPresenter
        XCTAssertNotNil(presenter.view, "view in DashboardPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in DashboardPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is DashboardRouter, "router is not DashboardRouter")

        let interactor: DashboardInteractor = presenter.interactor as! DashboardInteractor
        XCTAssertNotNil(interactor.output, "output in DashboardInteractor is nil after configuration")
    }

    class DashboardViewControllerMock: DashboardViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
