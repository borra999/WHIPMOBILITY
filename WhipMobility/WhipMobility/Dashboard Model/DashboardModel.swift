
import Foundation
struct DashboardModel : Codable {
	let httpStatus : Int?
	let response : Response?

	enum CodingKeys: String, CodingKey {

		case httpStatus = "httpStatus"
		case response = "response"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		httpStatus = try values.decodeIfPresent(Int.self, forKey: .httpStatus)
		response = try values.decodeIfPresent(Response.self, forKey: .response)
	}

}
