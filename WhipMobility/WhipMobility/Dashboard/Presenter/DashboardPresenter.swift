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
    var viewComponents = [DashBoradViewType]()
    
    func viewIsReady() {
        self.interactor.getdashBoardList()
    }
    func dashBoardList(dashBoardModel: DashboardModel) {
        self.view.loadViewWithData(dashBoardMdl: dashBoardModel)
        
//        if let analytics = dashBoardModel.response?.data?.analytics{
//            //Appending Rating and header to viewcomponents
//            if let _ = analytics.rating?.ratingItems {
//                self.viewComponents.append(.RatingsSectionHeader)
//                self.viewComponents.append(.Ratings)
//            }
//
//            //Appending Job and header to viewcomponents
//            if let jobItems = analytics.job?.jobItems, jobItems.count != 0 {
//                self.viewComponents.append(.JobsSectionHeader)
//                for _ in jobItems{
//                    viewComponents.append(.Jobs)
//                }
//            }
//
////            //Appending LineChart and header to viewcompnents
////            if let lineChart = analytics.lineCharts, lineChart.count != 0 {
////                self.viewComponents.append(.LineChartSectionHeader)
////                for lineChartIndividuals in lineChart{
////                    for _ in lineChartIndividuals{
////                        viewComponents.append(.LineChart)
////                    }
////                }
////            }
////
////            //Appending LineChart and header to viewcompnents
////            if let piechart = analytics.pieCharts, piechart.count != 0 {
////                self.viewComponents.append(.PieChartSectionHeader)
////                for _ in piechart{
////                    viewComponents.append(.PieChart)
////                }
////            }
//
//        }
    }
}
