//
//  Route.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import RealmSwift

final class Route: Object {
    @objc dynamic var route_id: String? = nil
    @objc dynamic var agency_id: String? = nil
    @objc dynamic var route_short_name: String? = nil
    @objc dynamic var route_long_name: String? = nil
    @objc dynamic var route_desc: String? = nil
    @objc dynamic var route_type: String? = nil
    @objc dynamic var route_url: String? = nil
    @objc dynamic var route_color: String? = nil
    @objc dynamic var route_text_color: String? = nil
}
