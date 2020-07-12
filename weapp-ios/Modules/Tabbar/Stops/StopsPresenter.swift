//
//  StopsPresenter.swift
//  weapp-ios
//
//  Created by azerty on 21/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

// MARK:- StopPresentable
protocol StopPresentable: MapPresentable {
    // MARK:- Funcs
    init(view: StopsDisplayable)
}

// MARK:- StopsPresenter
final class StopsPresenter: StopPresentable {
    // MARK:- Properties
    private weak var displayable: StopsDisplayable?

    // MARK:- funcs
    required init(view: StopsDisplayable) {
        displayable = view
    }
}
