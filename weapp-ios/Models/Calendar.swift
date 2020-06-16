//
//  Calendar.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import RealmSwift

final class Calendar: Object {
    let service_id = RealmOptional<Int>()
    let monday = RealmOptional<Int>()
    let tuesday = RealmOptional<Int>()
    let wednesday = RealmOptional<Int>()
    let thursday = RealmOptional<Int>()
    let friday = RealmOptional<Int>()
    let saturday = RealmOptional<Int>()
    let sunday = RealmOptional<Int>()
    let start_date = RealmOptional<Int>()
    let end_date = RealmOptional<Int>()
}
