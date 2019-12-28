
import Foundation
struct Response : Codable {
	let message : String?
	let data : Data?

	enum CodingKeys: String, CodingKey {

		case message = "message"
		case data = "data"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		message = try values.decodeIfPresent(String.self, forKey: .message)
		data = try values.decodeIfPresent(Data.self, forKey: .data)
	}

}
