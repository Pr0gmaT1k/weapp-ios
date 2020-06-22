//
//  RealmObjectsTests.swift
//  weapp-iosTests
//
//  Created by azerty on 21/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import XCTest
import RealmSwift

class RealmObjectsTests: XCTestCase {
    // MARK:- Properties
    var realm: Realm!
    let realmUrl = Bundle(identifier: "cl.azerty.weapp-iosTests")?.url(forResource: "test", withExtension: "realm")

    // MARK:- Init
    override func setUp() {
        super.setUp()
        guard let realmUrl = realmUrl else { return }
        realm = try! Realm(fileURL: realmUrl)
    }

    override func tearDown() {
        super.tearDown()
        guard let realmUrl = realmUrl  else { return }
        let realmURLs = [
            realmUrl.appendingPathExtension("lock"),
            realmUrl.appendingPathExtension("note"),
            realmUrl.appendingPathExtension("management")
        ]
        for url in realmURLs {
            try? FileManager.default.removeItem(at: url)
        }
    }
}
