//
//  SavedPresenter.swift
//  weapp-ios
//
//  Created by azerty on 21/06/2020.
//  Copyright © 2020 azerty. All rights reserved.
//

import UIKit

// MARK:- SavedPresentable
protocol SavedPresentable {
    // MARK:- Funcs
    init(view: SavedDisplayable)
}

// MARK:- SavedPresenter
final class SavedPresenter: SavedPresentable {
    // MARK:- Properties
    private weak var displayable: SavedDisplayable?

    // MARK:- funcs
    required init(view: SavedDisplayable) {
        displayable = view
    }
}
