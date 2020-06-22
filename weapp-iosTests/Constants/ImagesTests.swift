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
        let image: UIImage? = UIImage(asset: Asset.testImage)
        XCTAssert(image != nil)
    }

    func testLoadErrorImage() {
        let image: UIImage? = UIImage(asset: ImageAsset.init(name: "does not exist"))
        XCTAssert(image == nil)
    }

    func testGetImage() {
        let image: Any? = Asset.testImage.image
        XCTAssert(image != nil)
    }

    func testGetCGImage() {
        let image: Any? = Asset.testImage.image.cgImage
        XCTAssert(image != nil)
    }

    func testGetCIImage() {
        let image: Any? = Asset.testImage.image.ciImage
        XCTAssert(image == nil) // not supported
    }

    func testColorAsset() {
        let color: UIColor? = UIColor(asset: Asset.testColor)
        XCTAssert(color != nil)
    }

    func testGetColorAsset() {
        let color: Any? = Asset.testColor.color
        XCTAssert(color != nil)
    }

    func testDataAsset() {
        let data: NSDataAsset? = NSDataAsset.init(asset: Asset.testData)
        XCTAssert(data != nil)
    }

    func testGetDataAsset() {
        let data: Any? = Asset.testData.data
        XCTAssert(data != nil)
    }
}
