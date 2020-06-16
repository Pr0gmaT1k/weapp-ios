//
//  CalendarDate.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import RealmSwift

final class CalendarDate: Object {
    let service_id = RealmOptional<Int>()
    let date = RealmOptional<Int>()
    let exception_type = RealmOptional<Int>()
}
