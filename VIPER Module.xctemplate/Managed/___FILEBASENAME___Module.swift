//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


class ___VARIABLE_productName:identifier___Module: ___VARIABLE_productName:identifier___Initiator, ___VARIABLE_productName:identifier___Container {
    
    private(set) weak var rootViewController: UIViewController?
    
    private var interactor: ___VARIABLE_productName:identifier___Interactor?
    private var presenter: ___VARIABLE_productName:identifier___Presenter?
    private weak var viewController: ___VARIABLE_productName:identifier___ViewController?

    private var configuration: ___VARIABLE_productName:identifier___Configuration
    private var completionHandler: (() -> Void)?
    
    // Uncomment in case of subclassing the NSObject
    /*override*/ init(configuration: ___VARIABLE_productName:identifier___Configuration) {

        //super.init() // In case of subclassing NSObject

        // Initialize dependencies, but don't start module
        self.configuration = configuration
    }

    func start(with provisioning: ___VARIABLE_productName:identifier___Provisioning, completion: (() -> Void)? = nil) -> UIViewController? {

        let storyboard = UIStoryboard(name: "___VARIABLE_productName:identifier___", bundle: Bundle.main)

        guard let storyboardController = storyboard.instantiateInitialViewController() as? ___VARIABLE_productName:identifier___ViewController else {
            return nil
        }

        // Init components using stored configuration and provided provisioning data
        interactor = ___VARIABLE_productName:identifier___Interactor()
        presenter = ___VARIABLE_productName:identifier___Presenter()
        viewController = storyboardController
        completionHandler = completion

        // Assemble module
        interactor?.observer = presenter
        presenter?.listener = self
        presenter?.delegate = self
        presenter?.dataSource = interactor
        presenter?.interactor = interactor
        presenter?.viewController = viewController
        viewController?.listener = presenter
        viewController?.container = self

        // Actual containing view controller can be different from module controllers instantiated from storyboards
        rootViewController = viewController

        return self
    }
    
}

extension ___VARIABLE_productName:identifier___Module: ___VARIABLE_productName:identifier___Events {

    func didClose() {
        completionHandler?()
    }

}

extension ___VARIABLE_productName:identifier___Module: ___VARIABLE_productName:identifier___Delegate {

}
