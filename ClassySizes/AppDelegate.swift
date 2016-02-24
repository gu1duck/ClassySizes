//
//  AppDelegate.swift
//  ClassySizes
//
//  Created by Jeremy Petter on 2016-02-09.
//  Copyright © 2016 Jeremy Petter. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds);
        window?.rootViewController = CSViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

}

