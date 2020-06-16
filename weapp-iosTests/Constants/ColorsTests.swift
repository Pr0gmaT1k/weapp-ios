//
//  ColorsTests.swift
//  weapp-iosTests
//
//  Created by azerty on 14/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import XCTest
@testable import weapp_ios

class ColorsTests: XCTestCase {
    func testLoadColor() {
        let color: UIColor? = Color.init(named: ColorName.test)
        XCTAssert(color != nil)
    }

    func testGetColor() {
        let color: UIColor? = ColorName.test.color
        XCTAssert(color != nil)
    }

    func testGetRgbColor() {
        let color: UInt32? = ColorName.test.rgbaValue
        XCTAssert(color != nil)
    }

    func testAssetColor() {
        let color: ColorAsset? = ColorAsset.init(name: "does not exist")
        let colorName = color?.name
        let loadedColor: UIColor? = UIColor(asset: color!)
        XCTAssert(color != nil && colorName != nil && loadedColor == nil)
    }
}
