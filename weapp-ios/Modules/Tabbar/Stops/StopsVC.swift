//
//  StopsVC.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

protocol StopsVCDelegate: class {}

protocol StopsDisplayable: class {}

final class StopsVC: UIViewController, StopsDisplayable {
    // MARK:- Properties
    weak var delegate: StopsVCDelegate?
    lazy var presenter = StopsPresenter(view: self)

    // MARK:- Funcs
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
