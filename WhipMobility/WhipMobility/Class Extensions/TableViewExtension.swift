//
//  TableViewExtension.swift
//  WhipMobility
//
//  Created by admin on 28/12/2019.
//  Copyright © 2019 Mobiversa Sdn. Bhd. All rights reserved.
//

import UIKit

extension UITableView {
    func register<T: UITableViewCell>(_: T.Type) {
        register(UINib(nibName: String(describing: T.self), bundle: nil), forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(_: T.Type) -> T {
        return dequeueReusableCell(withIdentifier: T.reuseIdentifier) as! T
    }
    
    func dequeueReusableCell<T: UITableViewCell>(_: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as! T
    }
}
