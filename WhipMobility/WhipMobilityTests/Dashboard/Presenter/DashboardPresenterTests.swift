//
//  DashboardDashboardPresenterTests.swift
//  WhipMobility
//
//  Created by anjibabu9 on 28/12/2019.
//  Copyright © 2019 Bhargav Borra. All rights reserved.
//

import XCTest

class DashboardPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: DashboardInteractorInput {

    }

    class MockRouter: DashboardRouterInput {

    }

    class MockViewController: DashboardViewInput {

        func setupInitialState() {

        }
    }
}
