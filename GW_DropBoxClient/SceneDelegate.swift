//
//  SceneDelegate.swift
//  GW_DropBoxClient
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Create a new UIWindow using the windowScene constructor which takes in a window scene.
        let window = UIWindow(windowScene: windowScene)
        
        // Create instances of view controllers
        let filesViewController = FilesViewController()
        let uploadViewController = UploadViewController()
        
        // Set titles and icons
        filesViewController.tabBarItem = UITabBarItem(title: "Files",
                                                      image: UIImage(systemName: "doc"),
                                                      selectedImage: UIImage(systemName: "doc.fill"))
        uploadViewController.tabBarItem = UITabBarItem(title: "Photos",
                                                       image: UIImage(systemName: "photo"),
                                                       selectedImage: UIImage(systemName: "photo.fill"))
        
        let filesNavController = UINavigationController(rootViewController: filesViewController)
        let uploadNavController = UINavigationController(rootViewController: uploadViewController)
        
        // Create the Tab Bar Controller
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [filesNavController, uploadNavController]
        
        // Set the root view controller of the window with your tab bar controller
        window.rootViewController = tabBarController
        
        // Set this scene's window and make it visible
        self.window = window
        window.makeKeyAndVisible()   
    }
}

