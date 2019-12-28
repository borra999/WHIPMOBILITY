
import Foundation
struct LineCharts : Codable {
	let chartType : String?
	let description : String?
	let lineItems : [LineItems]?
	let title : String?

	enum CodingKeys: String, CodingKey {

		case chartType = "chartType"
		case description = "description"
		case lineItems = "items"
		case title = "title"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		chartType = try values.decodeIfPresent(String.self, forKey: .chartType)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		lineItems = try values.decodeIfPresent([LineItems].self, forKey: .lineItems)
		title = try values.decodeIfPresent(String.self, forKey: .title)
	}

}
