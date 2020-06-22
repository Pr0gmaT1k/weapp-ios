//
//  LoaderView.swift
//  weapp-ios
//
//  Created by azerty on 06/10/2019.
//  Copyright © 2019 azerty. All rights reserved.
//

import UIKit

/// A simple loader view. Integrated in UIViewController with showNPLoader: & hideNPLoader:
final class LoaderView: UIView {
    override init(frame: CGRect) {
        let center = CGPoint(x: frame.size.width  / 2,
        y: frame.size.height / 2)
        let activityIndicator = UIActivityIndicatorView(frame: CGRect(origin: center, size: CGSize(width: 30, height: 30)))
        super.init(frame: frame)
        self.backgroundColor = Color.systemGray.withAlphaComponent(0.5)
        self.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        self.alpha = 0
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    /// Fade in
    func show() {
        UIView.animate(withDuration: 0.5, animations: {
            self.alpha = 1.0
        })
    }
    
    /// Fade out
    func hide(animated: Bool = true, completion: (() -> Void)? = nil) {
        if animated {
            UIView.animate(withDuration: 0.5, animations: {
                self.alpha = 0.0
            }, completion: { _ in
                self.removeFromSuperview()
                completion?()
            })
        } else {
            self.alpha = 0.0
            self.removeFromSuperview()
        }
    }
}

// MARK:- Add default management to UIVC
extension UIViewController {
    
    /// Fade in
    func showLoader() {
        let loader = LoaderView(frame: self.view.frame)
        self.view.addSubview(loader)
        loader.show()
    }

    var loaderIsShown: Bool {
        return self.view.subviews.filter { $0 is LoaderView }.isEmpty == false
    }
    
    /// Fade out
    func hideLoader(animated: Bool = true, completion: (() -> Void)? = nil) {
        let loaderViews = self.view.subviews.filter { $0 is LoaderView }
        _ = loaderViews.map { ($0 as? LoaderView)?.hide(animated: animated, completion: completion) }
    }
}
