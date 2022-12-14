//
//  SceneDelegate.swift
//  tableView
//
//  Created by Shivam
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // function to configure
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // function to disconnect the scene
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // function to active state
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Function to active state
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // function to foregrounf
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // function to background
    }


}

