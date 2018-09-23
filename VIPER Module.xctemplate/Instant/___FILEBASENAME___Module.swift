//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


class ___VARIABLE_productName:identifier___Module: ___VARIABLE_productName:identifier___Container {
    
    private(set) var rootViewController: UIViewController?
    
    private var interactor: ___VARIABLE_productName:identifier___Interactor?
    private var presenter: ___VARIABLE_productName:identifier___Presenter?
    private weak var viewController: ___VARIABLE_productName:identifier___ViewController?

    private var completionHandler: (() -> Void)?
    
    // Uncomment in case of subclassing the NSObject
    /*override*/ init?(dependencies: ___VARIABLE_productName:identifier___Dependencies, completion: (() -> Void)?) {

        let storyboard = UIStoryboard(name: "___VARIABLE_productName:identifier___", bundle: Bundle.main)

        guard let storyboardController = storyboard.instantiateInitialViewController() as? ___VARIABLE_productName:identifier___ViewController else {
            return nil
        }

        // Use dependencies to configure components
        interactor = ___VARIABLE_productName:identifier___Interactor()
        presenter = ___VARIABLE_productName:identifier___Presenter()
        viewController = storyboardController
        completionHandler = completion

        //super.init() // In case of subclassing NSObject

        // Assemble module
        interactor?.delegate = presenter
        presenter?.delegate = self
        presenter?.dataSource = interactor
        presenter?.interactor = interactor
        presenter?.viewController = viewController
        viewController?.delegate = presenter
        viewController?.container = self

        // Actual containing view controller can be different from module controllers instantiated from storyboards
        rootViewController = viewController
    }
    
}

extension ___VARIABLE_productName:identifier___Module: ___VARIABLE_productName:identifier___PresenterDelegate {

    func didClose() {
        completionHandler?()
    }

}
