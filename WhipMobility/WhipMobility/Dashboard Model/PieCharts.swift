
import Foundation
struct PieCharts : Codable {
	let chartType : String?
	let description : String?
	let pieChartItems : [PieChartItems]?
	let title : String?

	enum CodingKeys: String, CodingKey {

		case chartType = "chartType"
		case description = "description"
		case pieChartItems = "items"
		case title = "title"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		chartType = try values.decodeIfPresent(String.self, forKey: .chartType)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		pieChartItems = try values.decodeIfPresent([PieChartItems].self, forKey: .pieChartItems)
		title = try values.decodeIfPresent(String.self, forKey: .title)
	}

}
