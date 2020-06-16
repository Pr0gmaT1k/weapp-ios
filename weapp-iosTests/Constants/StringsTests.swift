//
//  StringsTests.swift
//  weapp-iosTests
//
//  Created by azerty on 14/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import XCTest
@testable import weapp_ios

class StringsTests: XCTestCase {
    func testLoadString() {
        let string: String? = L10n.Test.unitTest
        XCTAssert(string != nil)
    }
}
