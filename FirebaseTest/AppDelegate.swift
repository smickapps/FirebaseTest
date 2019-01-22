//
//  AppDelegate.swift
//  FirebaseTest
//
//  Created by Michael Schembri on 21/1/19.
//  Copyright © 2019 Michael Schembri. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		// Override point for customization after application launch.
		
		FirebaseConfiguration().setLoggerLevel(.min)
		FirebaseApp.configure()
		let db = Firestore.firestore()
		let settings = db.settings
		settings.areTimestampsInSnapshotsEnabled = true
		db.settings = settings
		
		return true
	}
}



