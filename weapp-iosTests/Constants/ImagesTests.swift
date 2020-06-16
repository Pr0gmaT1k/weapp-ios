//
//  ImagesTests.swift
//  weapp-iosTests
//
//  Created by azerty on 14/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import XCTest
@testable import weapp_ios

class ImagesTests: XCTestCase {
    func testLoadImage() {
        let image: UIImage? = UIImage(asset: Asset.test)
        XCTAssert(image != nil)
    }

    func testLoadErrorImage() {
        let image: UIImage? = UIImage(asset: ImageAsset.init(name: "does not exist"))
        XCTAssert(image == nil)
    }

    func testGetImage() {
        let image: Any? = Asset.test.image
        XCTAssert(image != nil)
    }

    func testGetCGImage() {
        let image: Any? = Asset.test.image.cgImage
        XCTAssert(image != nil)
    }

    func testGetCIImage() {
        let image: Any? = Asset.test.image.ciImage
        XCTAssert(image == nil) // not supported
    }
}
