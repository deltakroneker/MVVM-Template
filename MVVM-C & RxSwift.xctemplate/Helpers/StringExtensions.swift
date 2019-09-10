//
//  StringExtensions.swift
//  MVVM-C & RxSwift Template
//
//  Created by K7 Tech Agency
//  Copyright © 2019 Nikola Milic. All rights reserved.
//

extension String {

    func isNotEmpty() -> Bool {
        return !isEmpty
    }
    
    func isEmailValid() -> Bool {
        var validity = true
        let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        
        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = self as NSString
            let results = regex.matches(in: self, range: NSRange(location: 0, length: nsString.length))
            
            if results.count == 0 {
                validity = false
            }
        } catch let error as NSError {
            print("invalidity regex: \(error.localizedDescription)")
            validity = false
        }
        
        return validity
    }
}