
import Foundation
struct Service : Codable {
	let description : String?
	let serviceItems : [ServiceItems]?
	let title : String?

	enum CodingKeys: String, CodingKey {

		case description = "description"
		case serviceItems = "items"
		case title = "title"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		serviceItems = try values.decodeIfPresent([ServiceItems].self, forKey: .serviceItems)
		title = try values.decodeIfPresent(String.self, forKey: .title)
	}

}
