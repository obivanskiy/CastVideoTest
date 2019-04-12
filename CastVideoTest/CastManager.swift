//
//  CastManager.swift
//  CastVideoTest
//
//  Created by Ivan Obodovskyi on 4/10/19.
//  Copyright © 2019 Ivan Obodovskyi. All rights reserved.
//

import Foundation
import GoogleCast

class CastManager {
    private var sessionManager: GCKSessionManager!
    
    func initialise() {
        initialiseContext()
        createSessionManager()
    }
    
    //creates the GCKSessionManager
    private func createSessionManager() {
        sessionManager = GCKCastContext.sharedInstance().sessionManager
    }
    
    //initialises the GCKCastContext
    private func initialiseContext() {
        //application Id from the registered application
        let options = GCKCastOptions(discoveryCriteria: GCKDiscoveryCriteria.init(applicationID: "6118C72A"))
        GCKCastContext.setSharedInstanceWith(options)
        GCKCastContext.sharedInstance().useDefaultExpandedMediaControls = true
    }
}
