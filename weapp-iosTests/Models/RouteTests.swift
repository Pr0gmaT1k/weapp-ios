//
//  RouteTests.swift
//  weapp-iosTests
//
//  Created by azerty on 14/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import XCTest
import RealmSwift
@testable import weapp_ios

class RouteTests: RealmObjectsTests {
    func testLoad() {
        XCTAssert(realm.objects(Route.self).first != nil)
    }
}
