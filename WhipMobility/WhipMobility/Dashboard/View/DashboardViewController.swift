//
//  DashboardDashboardViewController.swift
//  WhipMobility
//
//  Created by anjibabu9 on 28/12/2019.
//  Copyright © 2019 Bhargav Borra. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController, DashboardViewInput {

    @IBOutlet var dashBoardTable: UITableView!
    @IBOutlet var dataBtnName: UIButton!
    var dashBoardMdl: DashboardModel!
    var output: DashboardViewOutput!
    
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    // MARK: DashboardViewInput
    func setupInitialState() {
    }

    
    
    
    //Reload tableview data
    func loadViewWithData(dashBoardMdl: DashboardModel) {
        self.dashBoardMdl = dashBoardMdl
        DispatchQueue.main.async {
            self.dashBoardTable.dataSource = self
            self.dashBoardTable.delegate = self
            self.dashBoardTable.reloadData()
        }
        
    }
    
    func dashBoardFilter(){
        let alert = UIAlertController(title: "Dashboard filter", message: "Dashboad data will get filter based on this", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("ALL")
                
            case .cancel:
                print("CANCEL")
                
            case .destructive:
                print("APPLY")
                
            @unknown default:
                fatalError()
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func dataBtn(_ sender: Any) {
           
       }
       
       
       @IBAction func filetrBtn(_ sender: Any) {
           
       }
}
extension DashboardViewController : UITableViewDelegate, UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
            return DashBoradViewType.numberOfSections()
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch DashBoradViewType.getSection(section) {
        case .Jobs:
            if let jobs = self.dashBoardMdl.response?.data?.analytics?.job?.jobItems {
                return jobs.count
            }
            guard let jobs = self.dashBoardMdl.response?.data?.analytics?.job?.jobItems else {
                return 0
            }
            return jobs.count
        case .LineChart:
             guard let lineChart = self.dashBoardMdl.response?.data?.analytics?.lineCharts else {
                return 0
             }
             
             return (lineChart.count > 0) ? lineChart[0].count : 0
        case .Ratings:
            guard let _ = self.dashBoardMdl.response?.data?.analytics?.rating else {
                return 0
            }
            return 1;
        case .PieChart:
            guard let pieChart = self.dashBoardMdl.response?.data?.analytics?.pieCharts else {
                return 0
            }
            return pieChart.count;
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch DashBoradViewType.getSection(indexPath.section) {
        case .Jobs:
            let cell = tableView.dequeueReusableCell(JobsCell.self)
            return cell
        case .LineChart:
             let cell = tableView.dequeueReusableCell(LineChartCell.self)
             if let lineItem = self.dashBoardMdl.response?.data?.analytics?.lineCharts?[0][indexPath.row].lineItems
             {
                cell.charView.dataEntries = cell.configureLineChart(lineItem: lineItem)
                cell.charView.isCurved = true
             }
            
            return cell
        case .Ratings:
            let cell = tableView.dequeueReusableCell(RatingsCell.self)
            return cell
        case .PieChart:
            let cell = tableView.dequeueReusableCell(PieChartCell.self)
            return cell
        }
    }
}
