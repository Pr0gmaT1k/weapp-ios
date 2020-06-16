//
//  SavedVC.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

protocol SavedVCDelegate: class {}

final class SavedVC: UIViewController {
    // MARK:- Properties
    weak var delegate: SavedVCDelegate?

    // MARK:- Funcs
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
