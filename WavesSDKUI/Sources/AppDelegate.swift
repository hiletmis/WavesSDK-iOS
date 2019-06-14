//
//  AppDelegate.swift
//  WavesSDK
//
//  Created by rprokofev on 03/04/2019.
//  Copyright © 2019 Waves. All rights reserved.
//

import UIKit
import WavesSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customirzation after application launch.
        
        
        WavesSDK.initialization(servicesPlugins: .init(data: [], node: [], matcher: []), enviroment: .init(server: .mainNet, timestampServerDiff: 0))
        
        
        WavesSDK.shared.services.nodeServices.addressesNodeService.addressBalance(address: "3PCAB4sHXgvtu5NPoen6EXR5yaNbvsEA8Fj").subscribe(onNext: { (bql) in
            
        }, onError: nil, onCompleted: nil, onDisposed: nil)
        
//        ServicesFactory.initialization(dataServicePlugins: [],
//                                       nodeServicePlugins: [],
//                                       matcherrServicePlugins: [])
//        
//        
//        ServicesFactory.shared
//            .addressesNodeService
//            .accountBalance(address: "3PCAB4sHXgvtu5NPoen6EXR5yaNbvsEA8Fj",
//                            enviroment: .init(serverUrl: URL(string: "https://nodes.wavesnodes.com/")!,
//                                                             timestampServerDiff: 0))
//            .subscribe(onNext: { (balance) in
//                
//            }, onError: { (error) in
//                
//            }, onCompleted: {
//                
//            }) {
//            
//            }
                
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}