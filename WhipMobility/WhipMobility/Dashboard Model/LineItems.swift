
import Foundation
struct LineItems : Codable {
	let key : String?
	let value : [Value]?

	enum CodingKeys: String, CodingKey {

		case key = "key"
		case value = "value"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		key = try values.decodeIfPresent(String.self, forKey: .key)
		value = try values.decodeIfPresent([Value].self, forKey: .value)
	}

}
