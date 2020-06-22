//
//  LinesVC.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

protocol LinesVCDelegate: class {}

protocol LinesDisplayable: class {}

final class LinesVC: UIViewController, LinesDisplayable {
    // MARK:- Properties
    weak var delegate: LinesVCDelegate?
    lazy var presenter = LinesPresenter(view: self)

    // MARK:- Funcs
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
