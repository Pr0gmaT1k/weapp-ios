//
//  Shape.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import RealmSwift

final class Shape: Object {
    @objc dynamic var shape_id: String? = nil
    @objc dynamic var shape_pt_lat: String? = nil
    @objc dynamic var shape_pt_lon: String? = nil
    @objc dynamic var shape_pt_sequence: String? = nil
    @objc dynamic var shape_dist_traveled: String? = nil
}
