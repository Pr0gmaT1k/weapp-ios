//
//  StopsVC.swift
//  weapp-ios
//
//  Created by azerty on 13/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

protocol StopsVCDelegate: class {}

final class StopsVC: UIViewController {
    // MARK:- Properties
    weak var delegate: StopsVCDelegate?

    // MARK:- Funcs
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
