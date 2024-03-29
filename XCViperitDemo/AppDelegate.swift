//
//  AppDelegate.swift
//  Viperit
//
//  Created by Ferran on 11/09/2016.
//  Copyright © 2016 Ferran Abelló. All rights reserved.
//

import UIKit
import Viperit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
//        let module = AppModules.tableOfContents.build()
//        let router = module.router as! TableOfContentsRouter
        
//        let module = AppModules.home.build()
//        let router = module.router as! HomeRouter
        
        let module = AppModules.news.build()
        let router = module.router as! NewsRouter
        router.show(inWindow: window, embedInNavController: true)
        
        return true
    }

}

