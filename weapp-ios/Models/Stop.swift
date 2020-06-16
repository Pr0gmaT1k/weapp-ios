//
//  Stop.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import RealmSwift

final class Stop: Object {
    let stop_id = RealmOptional<Int>()
    @objc dynamic var stop_code: String? = nil
    @objc dynamic var stop_name: String? = nil
    @objc dynamic var stop_desc: String? = nil
    let stop_lat = RealmOptional<Double>()
    let stop_lon = RealmOptional<Double>()
    @objc dynamic var zone_id: String? = nil
    @objc dynamic var stop_url: String? = nil
    let location_type = RealmOptional<Int>()
    @objc dynamic var parent_station: String? = nil
    @objc dynamic var stop_timezone: String? = nil
    let wheelchair_boarding = RealmOptional<Int>()
}
