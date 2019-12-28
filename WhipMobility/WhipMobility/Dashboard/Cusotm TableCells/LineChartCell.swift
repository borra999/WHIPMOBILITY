//
//  LineChartCell.swift
//  WhipMobility
//
//  Created by Bhargav Anjibabu Borra on 28/12/2019.
//  Copyright © 2019 Mobiversa Sdn. Bhd. All rights reserved.
//

import UIKit

class LineChartCell: UITableViewCell {

    @IBOutlet weak var charView: LineChart!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureLineChart(lineItem : [LineItems]) -> [PointEntry] {
        return lineItem.map {(lineI) -> PointEntry in
//            lineI.value?[0].value
            let enty = PointEntry(value: lineI.value?[0].value ?? 0, label:"" )
            return enty
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
