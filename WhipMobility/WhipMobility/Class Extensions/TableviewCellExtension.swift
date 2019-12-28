//
//  TableviewCellExtension.swift
//  WhipMobility
//
//  Created by admin on 28/12/2019.
//  Copyright © 2019 Mobiversa Sdn. Bhd. All rights reserved.
//

import UIKit

extension UITableViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
