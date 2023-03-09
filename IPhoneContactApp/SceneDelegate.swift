//
//  SceneDelegate.swift
//  IPhoneContactApp
//
//  Created by Semih Ekmen on 7.03.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate,UISplitViewControllerDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else {return}
//        //RUSSIAN STYLE
//        guard let splitViewController = window?.rootViewController as? UISplitViewController else {fatalError()}
//        guard let leftNavigationController = splitViewController.viewControllers.first as? UINavigationController else{fatalError()}
//        guard let masterViewController = leftNavigationController.viewControllers.first as? ContactDetailViewController else{fatalError()}
//        guard let detailViewController = splitViewController.viewControllers.last as? ContactViewController else {fatalError()}
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        //FURKAN SABAZ
        guard let secondaryAsNavController = secondaryViewController as? UINavigationController else {return false}
          guard let topAsDetailController = secondaryAsNavController.topViewController as? ContactDetailViewController else {return false}
          if topAsDetailController.contactModel == nil {
              return true
          }
          return false
    }

}

    
