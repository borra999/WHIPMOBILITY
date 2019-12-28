
import Foundation
struct RatingItems : Codable {
	let one : Int?
	let two : Int?
	let three : Int?
	let four : Int?
	let five : Int?

	enum CodingKeys: String, CodingKey {

		case one = "1"
		case two = "2"
		case three = "3"
		case four = "4"
		case five = "5"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		one = try values.decodeIfPresent(Int.self, forKey: .one)
		two = try values.decodeIfPresent(Int.self, forKey: .two)
		three = try values.decodeIfPresent(Int.self, forKey: .three)
		four = try values.decodeIfPresent(Int.self, forKey: .four)
		five = try values.decodeIfPresent(Int.self, forKey: .five)
	}

}
