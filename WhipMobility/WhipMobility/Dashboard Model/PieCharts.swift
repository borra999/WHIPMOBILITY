
import Foundation
struct PieCharts : Codable {
	let chartType : String?
	let description : String?
	let items : [Items]?
	let title : String?

	enum CodingKeys: String, CodingKey {

		case chartType = "chartType"
		case description = "description"
		case items = "items"
		case title = "title"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		chartType = try values.decodeIfPresent(String.self, forKey: .chartType)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		items = try values.decodeIfPresent([Items].self, forKey: .items)
		title = try values.decodeIfPresent(String.self, forKey: .title)
	}

}
