//
//  AgencyTests.swift
//  weapp-iosTests
//
//  Created by azerty on 14/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import XCTest
import RealmSwift
@testable import weapp_ios

class AgencyTests: XCTestCase {
    // MARK:- Properties
    var realm: Realm!

    // MARK:- Init
    override func setUp() {
        super.setUp()
        guard let config = Bundle(identifier: "cl.azerty.weapp-iosTests")?.url(forResource: "test", withExtension: "realm") else { return }
        realm = try! Realm(fileURL: config)
    }

    func testLoad() {
        XCTAssert(realm.objects(Agency.self).first != nil)
    }
}
