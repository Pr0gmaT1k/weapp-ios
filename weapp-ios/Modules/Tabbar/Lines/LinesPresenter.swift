//
//  LinesPresenter.swift
//  weapp-ios
//
//  Created by azerty on 21/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

// MARK:- LinesPresentable
protocol LinesPresentable {
    // MARK:- Funcs
    init(view: LinesDisplayable)
}

// MARK:- StopsPresenter
final class LinesPresenter: LinesPresentable {
    // MARK:- Properties
    private weak var displayable: LinesDisplayable?

    // MARK:- funcs
    required init(view: LinesDisplayable) {
        displayable = view
    }
}
