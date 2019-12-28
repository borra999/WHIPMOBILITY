
import UIKit

enum DashBoradViewType:CaseIterable{
    case Ratings, Jobs, LineChart, PieChart

    static func numberOfSections() -> Int {
        return self.allCases.count
    }
    
    static func getSection(_ section: Int) -> DashBoradViewType {
        return self.allCases[section]
    }
}
