//
//  SavedVC.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

protocol SavedVCDelegate: class {}

protocol SavedDisplayable: class {}

final class SavedVC: UIViewController, SavedDisplayable {
    // MARK:- Properties
    weak var delegate: SavedVCDelegate?
    lazy var presenter = SavedPresenter(view: self)

    // MARK:- Funcs
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
