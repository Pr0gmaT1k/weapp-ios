//
//  StopsVC.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit
import CartoMobileSDK

protocol StopsVCDelegate: class {}

protocol StopsDisplayable: MapDisplayable {
    var presenter: StopsPresenter { get set }
}

final class StopsVC: UIViewController, StopsDisplayable {
    // MARK:- IBOutlets
    @IBOutlet weak var mapView: NTMapView!

    // MARK:- Properties
    weak var delegate: StopsVCDelegate?
    lazy var presenter = StopsPresenter(view: self)

    // MARK:- Funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.fill(map: mapView)
    }
}
