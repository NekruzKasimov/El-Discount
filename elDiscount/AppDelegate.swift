//
//  AppDelegate.swift
//  elDiscount
//
//  Created by ZYFAR on 04.12.17.
//  Copyright © 2017 NeoBis. All rights reserved.
//

import UIKit
import IQKeyboardManager

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		setupNavigationAppearance()
        IQKeyboardManager.shared().isEnabled = true
        UITabBar.appearance().backgroundColor = .white
		
		if !DataManager.hasLoginCredentials {
			let rootController = Storyboard.Login.loginVC
			self.window?.rootViewController = rootController
		}
		
        return true
    }
	
    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
	}

    func applicationWillTerminate(_ application: UIApplication) {
    }
	
	//MARK: - My actions
	
	func setupNavigationAppearance() {
		UINavigationBar.appearance().barTintColor = AppStyle.Color.green
		UINavigationBar.appearance().tintColor = .white
		UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
		UINavigationBar.appearance().isTranslucent = false
		UINavigationBar.appearance().shadowImage = UIImage()
		UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
	}


}

