//
//  MapPresentable.swift
//  weapp-ios
//
//  Created by azerty on 12/07/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit
import CartoMobileSDK

protocol MapPresentable: class {
    func fill(map: NTMapView)
}

extension MapPresentable {
    func fill(map: NTMapView) {
        let tileDataSource = NTMBTilesTileDataSource(path: Bundle.main.path(forResource: "tiles", ofType: "mbtiles"))

        // Create tile decoder based on Voyager style and VectorTileLayer
        let tileDecoder = NTCartoVectorTileLayer.createTileDecoder(from: .CARTO_BASEMAP_STYLE_POSITRON)
        let offlineLayer = NTVectorTileLayer(dataSource: tileDataSource, decoder: tileDecoder)
        map.getLayers()?.add(offlineLayer)
        map.getOptions()?.setWatermarkScale(0.0001)
        map.setFocus(NTMapPos(x: 155, y: 304), durationSeconds: 0)
        let defaultPos = map.getOptions().getBaseProjection().fromWgs84(NTMapPos(x: -71.4915, y: -33.0564))
        map.setFocus(defaultPos, durationSeconds: 0)
        map.setZoom(10, durationSeconds: 0.2)
    }
}
