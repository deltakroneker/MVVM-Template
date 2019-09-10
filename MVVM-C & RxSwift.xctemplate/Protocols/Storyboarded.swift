//
//  Storyboarded.swift
//  MVVM-C & RxSwift Template
//
//  Created by K7 Tech Agency
//  Copyright © 2019 Nikola Milic. All rights reserved.
//

import UIKit

enum StoryboardName: String {
    case main = "Main"
    case sample = "Sample"
}

protocol Storyboarded {
    static func instantiate(from: StoryboardName) -> Self
}

extension Storyboarded where Self: UIViewController {
    
    static func instantiate(from storyboard: StoryboardName) -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: .main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
