//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


class ___VARIABLE_productName:identifier___Module: ___VARIABLE_productName:identifier___ModuleProtocol {
    
    var completionHandler: (() -> Void)?
    
    var interactor: ___VARIABLE_productName:identifier___Interactor
    var presenter: ___VARIABLE_productName:identifier___Presenter

    var viewController: ___VARIABLE_productName:identifier___ViewController?
    var rootViewController: UIViewController?
    
    // Uncomment in case of subclassing the NSObject
    /*override*/ init() {
        
        interactor = ___VARIABLE_productName:identifier___Interactor()
        presenter = ___VARIABLE_productName:identifier___Presenter()
        
        //super.init() // In case of subclassing NSObject
        
        // Interactor setup
        interactor.delegate = presenter

        // Presenter setup
        presenter.delegate = self
        presenter.interactor = interactor
        
        // View controller setup
        let storyboard = UIStoryboard(name: "___VARIABLE_productName:identifier___", bundle: Bundle.main)
        
         if let storyboardController = storyboard.instantiateViewController(withIdentifier: "___VARIABLE_productName:identifier___") as? ___VARIABLE_productName:identifier___ViewController {
            
            presenter.viewControler = storyboardController
            
            viewController = storyboardController
            viewController?.container = self
            viewController?.delegate = presenter
            
            presenter.viewController = viewController

            rootViewController = UINavigationController(rootViewController: storyboardController)
         }
    }
}

extension ___VARIABLE_productName:identifier___Module: ___VARIABLE_productName:identifier___PresenterDelegate {

    func didClose() {
        completionHandler?()
    }

}
