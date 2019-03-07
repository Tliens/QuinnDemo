//
//  AppDelegate.swift
//  FontRegisterDemo
//
//  Created by Quinn on 2019/1/23.
//  Copyright © 2019 Quinn. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        func downLoadFont(){
            let libPath = FileManager.default.urls(for: .allLibrariesDirectory, in: .userDomainMask).first!
            let path = libPath.appendingPathComponent("zzzz.ttf")
            print("path-->",path)
             try? UIFont.register(url: path)
//            let urlSession = URLSession.init(configuration: URLSessionConfiguration.default)
//            let url = URL.init(string: "https://github.com/quinn0809/QuinnDemo/raw/master/zzztest.ttf")
//            let task = urlSession.dataTask(with: url!) { [weak self](data, response, error) in
//                try? data?.write(to: path)
//
//                //先注册
//                try? UIFont.register(url: path)
//                //            //再使用
//                DispatchQueue.main.async {[weak self]in
//
//                }
//
//
//                //发送通知
//
//                //sticker reload init 方法中
//            }
//            task.resume()
        }
        
        downLoadFont()
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
