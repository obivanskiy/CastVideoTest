//
//  ViewController.swift
//  CastVideoTest
//
//  Created by Ivan Obodovskyi on 4/9/19.
//  Copyright © 2019 Ivan Obodovskyi. All rights reserved.
//

import UIKit
import GoogleCast


class ViewController: UIViewController, Castable {
    var castButton: GCKUICastButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItems = [googleCastBarButton]
    } 
}
