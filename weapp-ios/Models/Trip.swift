//
//  Trip.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import RealmSwift

final class Trip: Object {
    @objc dynamic var route_id: String? = nil
    @objc dynamic var service_id: String? = nil
    @objc dynamic var trip_id: String? = nil
    @objc dynamic var trip_headsign: String? = nil
    @objc dynamic var trip_short_name: String? = nil
    @objc dynamic var direction_id: String? = nil
    @objc dynamic var block_id: String? = nil
    @objc dynamic var shape_id: String? = nil
}
