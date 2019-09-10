//
//  Authentication.swift
//  MVVM-C & RxSwift Template
//
//  Created by K7 Tech Agency
//  Copyright © 2019 Nikola Milic. All rights reserved.
//

import Foundation
import Moya

enum Authentication {
    case login(email: String, password: String)
    case register(firstName: String, lastName: String, email: String, password: String)
    case forgotPassword(email: String)
    case resetPassword(email: String, verificationCode: String, password: String)
    case changePassword(oldPassword: String, newPassword: String)
    case getNewToken(refreshToken: String)
}

extension Authentication: TargetType {
    var baseURL: URL {
        return URL(string: "BASE_URL")!
    }
    
    var path: String {
        switch self {
        case .login: return "login"
        case .register: return "register"
        case .forgotPassword: return "password/reset/email"
        case .resetPassword: return "password/reset"
        case .changePassword: return "password/change"
        case .getNewToken: return "refresh-token"
        }
    }
    
    var method: Moya.Method {
        return .post
    }
    
    var task: Task {
        switch self {
        case let .login(email, password):
            return .requestParameters(parameters: ["email": email,
                                                   "password": password],
                                      encoding: URLEncoding.default)
            
        case let .register(firstName, lastName, email, password):
            return .requestParameters(parameters: ["firstName": firstName,
                                                   "lastName":lastName,
                                                   "email": email,
                                                   "password": password],
                                      encoding: URLEncoding.default)

        case let .forgotPassword(email):
            return .requestParameters(parameters: ["email": email],
                                      encoding: URLEncoding.default)
            
        case let .resetPassword(email, verificationCode, password):
            return .requestParameters(parameters: ["email": email,
                                                   "verificationCode": verificationCode,
                                                   "password": password],
                                      encoding: URLEncoding.default)
            
        case let .changePassword(oldPassword, newPassword):
            return .requestParameters(parameters: ["oldPassword": oldPassword,
                                                   "oldPassword": newPassword],
                                      encoding: URLEncoding.default)

        case let .getNewToken(refreshToken):
            return .requestParameters(parameters: ["refreshToken": refreshToken],
                                      encoding: URLEncoding.default)
        }
    }

    var sampleData: Data {
        return Data()
    }
    
    var headers: [String : String]? {
        switch self {
        case .changePassword:
            return ["Content-Type": "application/json",
                    "Authorization": "ACCESS_TOKEN"]
        default:
            return ["Content-Type": "application/json"]
        }
    }
}
