
import Foundation
struct PieChartItems : Codable {
	let key : String?
	let value : Double?

	enum CodingKeys: String, CodingKey {

		case key = "key"
		case value = "value"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		key = try values.decodeIfPresent(String.self, forKey: .key)
		value = try values.decodeIfPresent(Double.self, forKey: .value)
	}

}
