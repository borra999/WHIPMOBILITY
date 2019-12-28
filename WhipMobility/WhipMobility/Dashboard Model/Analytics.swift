
import Foundation
struct Analytics : Codable {
	let job : Job?
	let lineCharts : [[LineCharts]]?
	let pieCharts : [PieCharts]?
	let rating : Rating?
	let service : Service?

	enum CodingKeys: String, CodingKey {

		case job = "job"
		case lineCharts = "lineCharts"
		case pieCharts = "pieCharts"
		case rating = "rating"
		case service = "service"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		job = try values.decodeIfPresent(Job.self, forKey: .job)
		lineCharts = try values.decodeIfPresent([[LineCharts]].self, forKey: .lineCharts)
		pieCharts = try values.decodeIfPresent([PieCharts].self, forKey: .pieCharts)
		rating = try values.decodeIfPresent(Rating.self, forKey: .rating)
		service = try values.decodeIfPresent(Service.self, forKey: .service)
	}

}
