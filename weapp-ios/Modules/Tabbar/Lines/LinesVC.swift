//
//  LinesVC.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

protocol LinesVCDelegate: class {}

final class LinesVC: UIViewController {
    // MARK:- Properties
    weak var delegate: LinesVCDelegate?

    // MARK:- Funcs
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
