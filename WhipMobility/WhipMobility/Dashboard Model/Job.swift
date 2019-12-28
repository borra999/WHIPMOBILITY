
import Foundation
struct Job : Codable {
	let description : String?
	let jobItems : [JobItems]?
	let title : String?

	enum CodingKeys: String, CodingKey {

		case description = "description"
		case jobItems = "items"
		case title = "title"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		jobItems = try values.decodeIfPresent([JobItems].self, forKey: .jobItems)
		title = try values.decodeIfPresent(String.self, forKey: .title)
	}

}
