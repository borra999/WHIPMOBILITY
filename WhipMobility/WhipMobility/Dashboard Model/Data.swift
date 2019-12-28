
import Foundation
struct Data : Codable {
	let analytics : Analytics?

	enum CodingKeys: String, CodingKey {

		case analytics = "analytics"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		analytics = try values.decodeIfPresent(Analytics.self, forKey: .analytics)
	}

}
