//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


class ___VARIABLE_productName:identifier___Module: ___VARIABLE_productName:identifier___Initiator, ___VARIABLE_productName:identifier___Container {
    
    var rootViewController: UIViewController? {
        return viewController
    }
    
    private var interactor: ___VARIABLE_productName:identifier___Interactor?
    private var presenter: ___VARIABLE_productName:identifier___Presenter?
    private weak var viewController: ___VARIABLE_productName:identifier___ViewController?

    private var completionHandler: (() -> Void)?
    
    // Uncomment in case of subclassing the NSObject
    /*override*/ init() {

        // Initialize dependencies, but don't start module
    }

    func start(completion: (() -> Void)? = nil) -> UIViewController? {

        interactor = ___VARIABLE_productName:identifier___Interactor()
        presenter = ___VARIABLE_productName:identifier___Presenter()

        let storyboard = UIStoryboard(name: "___VARIABLE_productName:identifier___", bundle: Bundle.main)

        if let storyboardController = storyboard.instantiateInitialViewController() as? ___VARIABLE_productName:identifier___ViewController {
            viewController = storyboardController
        }

        completionHandler = completion

        //super.init() // In case of subclassing NSObject
        
        // Interactor setup
        interactor?.delegate = presenter

        // Presenter setup
        presenter?.delegate = self
        presenter?.dataSource = interactor
        presenter?.interactor = interactor
        presenter?.viewController = viewController

        // View controller setup
        viewController?.delegate = presenter
        viewController?.container = self

        return rootViewController
    }
    
}

extension ___VARIABLE_productName:identifier___Module: ___VARIABLE_productName:identifier___PresenterDelegate {

    func didClose() {
        completionHandler?()
    }

}
