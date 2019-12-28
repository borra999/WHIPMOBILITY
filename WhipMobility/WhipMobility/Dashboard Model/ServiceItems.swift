
import Foundation
struct ServiceItems : Codable {
	let description : String?
	let growth : Int?
	let title : String?
	let total : Int?

	enum CodingKeys: String, CodingKey {

		case description = "description"
		case growth = "growth"
		case title = "title"
		case total = "total"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		growth = try values.decodeIfPresent(Int.self, forKey: .growth)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		total = try values.decodeIfPresent(Int.self, forKey: .total)
	}

}
