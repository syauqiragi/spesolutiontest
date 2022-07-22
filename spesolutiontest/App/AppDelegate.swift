//
//  AppDelegate.swift
//  spesolutiontest
//
//  Created by Ahmad Syauqi Albana on 22/07/22.
//

import UIKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        toViewController()
        return true
    }
    
    func toViewController() {
        let storyboard = UIStoryboard(name: "HomeVC", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        let navigationController = UINavigationController(rootViewController: controller)
        navigationController.navigationBar.isTranslucent = false
        navigationController.isNavigationBarHidden = true
        self.window = UIWindow()
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }
}

