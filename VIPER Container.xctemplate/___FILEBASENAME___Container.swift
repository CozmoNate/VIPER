//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


class ___VARIABLE_productName:identifier___Container: ___VARIABLE_productName:identifier___ContainerProtocol {
    
    private lazy var storyboard: UIStoryboard = {
        return UIStoryboard(name: "___VARIABLE_productName:identifier___", bundle: Bundle.main)
    }()
    
    var willStartHandler: (() -> Void)?
    var didStartHandler: (() -> Void)?
    var willFinishHandler: (() -> Void)?
    var didFinishHandler: (() -> Void)?
    
    private var interactor: ___VARIABLE_productName:identifier___InteractorProtocol
    private var presenter: (___VARIABLE_productName:identifier___PresenterProtocol & ___VARIABLE_productName:identifier___ViewControllerDelegate)
    
    private var rootViewController: ___VARIABLE_productName:identifier___ViewController?
    
    // Uncomment in case of subclassing the NSObject
    /*override*/ init() {
        
        interactor = ___VARIABLE_productName:identifier___Interactor()
        presenter = ___VARIABLE_productName:identifier___Presenter()
        
        //super.init() // In case of subclassing NSObject
        
        // Setup connections
        interactor.presenter = presenter;
        presenter.interactor = interactor;
        presenter.container = self;
        
    }
    
    func presentViewController(from presentingViewController: UIViewController, animated: Bool) -> UIViewController? {
        
        willStartHandler?()
        
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "___VARIABLE_productName:identifier___ViewController") as? ___VARIABLE_productName:identifier___ViewController else {
            return nil
        }
        
        rootViewController = viewController
        rootViewController?.container = self
        rootViewController?.delegate = presenter
        
        presenter.viewControler = viewController
        
        DispatchQueue.main.async {
            presentingViewController.present(viewController, animated: animated) {
                // Handle view presented here
                self.didStartHandler?()
            }
        }
        
        return viewController
    }
    
    private func dispose() {
        rootViewController?.container = nil
    }
    
    func dismissViewController(animated: Bool) {
        
        willFinishHandler?()
        
        guard let rootViewController = rootViewController, rootViewController.presentingViewController != nil else {
            DispatchQueue.main.async {
                self.didFinishHandler?()
                self.dispose()
            }
            return
        }
        
        DispatchQueue.main.async {
            rootViewController.dismiss(animated: animated) {
                self.didFinishHandler?()
                self.dispose()
            }
        }
    }
}
