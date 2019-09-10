//
//  UserDefaults+Template.swift
//  MVVM-C & RxSwift Template
//
//  Created by K7 Tech Agency
//  Copyright © 2019 Nikola Milic. All rights reserved.
//

import Foundation

extension UserDefaults {
    
    enum UserDefaultsKeys: String {
        case isLoggedIn
        case user
    }
    
    // MARK: - Setters

    func setIsLoggedIn(value: Bool) {
        set(value, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        synchronize()
    }
    
    func setUser(value: User) -> Bool {
        if let data = try? JSONEncoder().encode(value) {
            set(data, forKey: UserDefaultsKeys.user.rawValue)
            synchronize()
            return true
        } else {
            return false
        }
    }
    
    // MARK: - Getters

    func getIsLoggedIn() -> Bool { return bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue) }

    func getUser() -> User? {
        if let userData = data(forKey: UserDefaultsKeys.user.rawValue) {
            return try? JSONDecoder().decode(User.self, from: userData)
        } else {
            return nil
        }
    }
}
