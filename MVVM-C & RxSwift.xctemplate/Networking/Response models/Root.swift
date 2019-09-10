//
//  Root.swift
//  MVVM-C & RxSwift Template
//
//  Created by K7 Tech Agency
//  Copyright © 2019 Nikola Milic. All rights reserved.
//

import Foundation

struct Root: Codable {
    let success: Bool
    let message: String
    let data: RootData
    let status: Int
}