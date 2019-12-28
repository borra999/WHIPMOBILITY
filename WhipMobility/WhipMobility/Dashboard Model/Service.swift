
import Foundation
struct Service : Codable {
	let description : String?
	let items : [Items]?
	let title : String?

	enum CodingKeys: String, CodingKey {

		case description = "description"
		case items = "items"
		case title = "title"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		items = try values.decodeIfPresent([Items].self, forKey: .items)
		title = try values.decodeIfPresent(String.self, forKey: .title)
	}

}
