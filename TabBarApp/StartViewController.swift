//
//  ViewController.swift
//  TabBarApp
//
//  Created by m.korovin on 15.06.2023.
//

import UIKit

final class StartViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let firstVS = viewController as? FirstViewController {
                firstVS.view.backgroundColor = .systemCyan
            } else if let secondVC = viewController as? SecondViewController {
                secondVC.view.backgroundColor = .systemPink
            } else if let navigationVC = viewController as? UINavigationController {
                guard let thirdVC = navigationVC.topViewController as? ThirdViewController else { return }
                thirdVC.title = "Third Screen!"
                thirdVC.view.backgroundColor = .systemPink
            }
        }
    }

}

