//
//  Agency.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import RealmSwift

final class Agency: Object {
    let agency_id = RealmOptional<Int>()
    @objc dynamic var agency_name: String? = nil
    @objc dynamic var agency_url: String? = nil
    @objc dynamic var agency_timezone: String? = nil
    @objc dynamic var agency_lang: String? = nil
    @objc dynamic var agency_phone: String? = nil
    @objc dynamic var agency_fare_url: String? = nil
}
