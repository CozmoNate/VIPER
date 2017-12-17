//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___ModuleProtocol {
    
    static var storyboard: UIStoryboard {
        return UIStoryboard(name: "___VARIABLE_productName:identifier___", bundle: Bundle.main)
    }
    
    weak var delegate: ___VARIABLE_productName:identifier___ModuleDelegate?
    
    private var interactor: ___VARIABLE_productName:identifier___InteractorProtocol
    private var presenter: (___VARIABLE_productName:identifier___PresenterProtocol & ___VARIABLE_productName:identifier___ViewControllerDelegate)
    
    private(set) var rootViewController: ___VARIABLE_productName:identifier___ViewController! = nil
    
    // Uncomment in case of subclassing NSObject
    /*override*/ init() {
        
        interactor = ___VARIABLE_productName:identifier___Interactor()
        presenter = ___VARIABLE_productName:identifier___Presenter()
        
        //super.init() // In case of subclassing NSObject
        
        // Setup connections
        interactor.presenter = presenter;
        presenter.interactor = interactor;
        presenter.wireframe = self;
        
    }
    
    func presentView(from presentingViewController: UIViewController, animated: Bool) -> Bool {
        
        delegate?.___VARIABLE_viperFuncPrefix___ModuleWillStart(self)
        
        guard let viewController = ___VARIABLE_productName:identifier___Module.storyboard.instantiateViewController(withIdentifier: "___VARIABLE_productName:identifier___ViewController") as? ___VARIABLE_productName:identifier___ViewController else {
            return false
        }
        
        rootViewController = viewController
        rootViewController.module = self
        rootViewController.delegate = presenter
        
        presenter.viewControler = viewController
        
        DispatchQueue.main.async {
            presentingViewController.present(viewController, animated: animated) {
                // Handle view presented here
                delegate?.___VARIABLE_viperFuncPrefix___ModuleDidStart(self)
            }
        }
        
        return true
    }
    
    private func dispose() {
        rootViewController.module = nil
    }
    
    func closeView(animated: Bool) {
        
        delegate?.___VARIABLE_viperFuncPrefix___ModuleWillFinish(self)
        
        guard let rootViewController = rootViewController, rootViewController.presentingViewController != nil else {
            DispatchQueue.main.async {
                self.delegate?.___VARIABLE_viperFuncPrefix___ModuleDidFinish(self)
                self.dispose()
            }
            return
        }
        
        DispatchQueue.main.async {
            rootViewController.dismiss(animated: animated) {
                self.delegate?.___VARIABLE_viperFuncPrefix___ModuleDidFinish(self)
                self.dispose()
            }
        }
    }
}
