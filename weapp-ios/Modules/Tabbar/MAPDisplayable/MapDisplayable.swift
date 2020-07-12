//
//  MapDisplayable.swift
//  weapp-ios
//
//  Created by azerty on 12/07/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit
import CartoMobileSDK

protocol MapDisplayable: class {
    var mapView: NTMapView! { get set }
}
