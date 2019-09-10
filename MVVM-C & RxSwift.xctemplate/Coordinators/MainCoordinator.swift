//
//  MainCoordinator.swift
//  MVVM-C & RxSwift Template
//
//  Created by K7 Tech Agency
//  Copyright © 2019 Nikola Milic. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    var children = [Coordinator]()

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
         let vc = ViewController.instantiate()
         vc.coordinator = self
         navigationController.pushViewController(vc, animated: false)
    }
}
