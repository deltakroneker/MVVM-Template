//
//  User.swift
//  MVVM-C & RxSwift Template
//
//  Created by K7 Tech Agency
//  Copyright © 2019 Nikola Milic. All rights reserved.
//

import Foundation

struct User: Codable {
    let firstName: String?
    let lastName: String?
    let email: String?
    let token: String?
    let refreshToken: String?
}