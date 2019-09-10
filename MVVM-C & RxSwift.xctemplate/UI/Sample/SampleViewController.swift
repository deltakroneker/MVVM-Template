//
//  SampleViewController.swift
//  MVVM-C & RxSwift Template
//
//  Created by K7 Tech Agency
//  Copyright © 2019 Nikola Milic. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class SampleViewController: UIViewController, Storyboarded {

    // MARK: - Outlets

    // MARK: - Vars & Lets

    weak var coordinator: MainCoordinator?
    var viewModel: SampleViewModel!
    let bag = DisposeBag()

    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
        setupBindings()
    }
    
    // MARK: - Methods
    
    fileprivate func setupController() {
        // Use this method to setup views
    }
    
    fileprivate func setupBindings() {
        // Use this method to bind V and VM
        
        let observable1 = <#Input Observable 1#>
        
        let input = SampleViewModel.Input(sampleInput: observable1)
        let output = SampleViewModel.transform(input)
        
        output.sampleOutput
            .bind(to: <#Binder 1#>)
            .disposed(by: bag)
    }
}

// MARK: - <#Sample Protocol#> Extension

extension SampleViewController {}
