
import Foundation
struct Value : Codable {
	let key : String?
	let value : Int?

	enum CodingKeys: String, CodingKey {

		case key = "key"
		case value = "value"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		key = try values.decodeIfPresent(String.self, forKey: .key)
		value = try values.decodeIfPresent(Int.self, forKey: .value)
	}

}
