//
//  StopTime.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import RealmSwift

final class StopTimes: Object {
    @objc dynamic var trip_id: String? = nil
    @objc dynamic var arrival_time: String? = nil
    @objc dynamic var departure_time: String? = nil
    let stop_id = RealmOptional<Int>()
    let stop_sequence = RealmOptional<Int>()
    @objc dynamic var stop_headsign: String? = nil
    let pickup_type = RealmOptional<Int>()
    let drop_off_type = RealmOptional<Int>()
    @objc dynamic var shape_dist_traveled: String? = nil
}
