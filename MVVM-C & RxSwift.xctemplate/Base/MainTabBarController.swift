//
//  MainTabBarController.swift
//  MVVM-C & RxSwift Template
//
//  Created by K7 Tech Agency
//  Copyright © 2019 Nikola Milic. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let firstCoordinator = FirstTabCoordinator()
    let secondCoordinator = SecondTabCoordinator()
    
    init(startingIndex: Int) {
        super.init(nibName: nil, bundle: nil)
        self.selectedIndex = startingIndex
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstCoordinator.start()
        secondCoordinator.start()
        
        viewControllers = [firstCoordinator.navigationController,
                           secondCoordinator.navigationController]
    }
}
