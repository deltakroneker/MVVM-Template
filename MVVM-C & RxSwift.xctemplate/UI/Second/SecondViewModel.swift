//
//  SecondViewModel.swift
//  MVVM-C & RxSwift Template
//
//  Created by K7 Tech Agency
//  Copyright © 2019 Nikola Milic. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class SecondViewModel {
    
    // MARK: - Private
    
    // MARK: - Input
    
    struct Input {
        let sampleInput: <#Input Observable#>
    }
    
    // MARK: - Output
    
    struct Output {
        let sampleOutput: <#Output Observable#>
    }
    
    // MARK: - Transformation logic
    
    func transform(_ input: Input) -> Output {
        let transformedInput = input.sampleInput.<#Transformation#>
        return Output(sampleOutput: transformedInput)
    }
}
