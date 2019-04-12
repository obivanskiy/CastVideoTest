//
//  Castable.swift
//  CastVideoTest
//
//  Created by Ivan Obodovskyi on 4/10/19.
//  Copyright © 2019 Ivan Obodovskyi. All rights reserved.
//

import UIKit
import GoogleCast

protocol Castable {
    var googleCastBarButton: UIBarButtonItem! { get }
}

extension Castable where Self:UIViewController {
    var googleCastBarButton: UIBarButtonItem! {
        let castButton = GCKUICastButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        castButton.tintColor = .white
        return UIBarButtonItem(customView: castButton)
    }
}
