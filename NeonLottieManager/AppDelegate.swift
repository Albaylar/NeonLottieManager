//
//  AppDelegate.swift
//  NeonLottieManager
//
//  Created by Furkan Deniz Albaylar on 28.11.2023.
//

import UIKit
import NeonSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Neon.configure(
            window: &window,
            onboardingVC: Onboarding1VC(),
            paywallVC: Onboarding1VC(),
            homeVC: Onboarding1VC())
        window?.rootViewController = Onboarding1VC()
        return true
    }




}

