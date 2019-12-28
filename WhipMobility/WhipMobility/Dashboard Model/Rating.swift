
import Foundation
struct Rating : Codable {
	let avg : Int?
	let description : String?
	let ratingItems : RatingItems?
	let title : String?

	enum CodingKeys: String, CodingKey {

		case avg = "avg"
		case description = "description"
		case ratingItems = "items"
		case title = "title"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		avg = try values.decodeIfPresent(Int.self, forKey: .avg)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		ratingItems = try values.decodeIfPresent(RatingItems.self, forKey: .ratingItems)
		title = try values.decodeIfPresent(String.self, forKey: .title)
	}

}
