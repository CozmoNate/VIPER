//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation


protocol ___VARIABLE_productName:identifier___PresenterProtocol {

    weak var delegate: ___VARIABLE_productName:identifier___PresenterDelegate? { get set }

    weak var interactor: ___VARIABLE_productName:identifier___InteractorActions? { get set }
    weak var viewController: ___VARIABLE_productName:identifier___ViewControllerActions? { get set }
    
}

protocol ___VARIABLE_productName:identifier___PresenterActions: class {
    
    func reloadData()
    
}

protocol ___VARIABLE_productName:identifier___PresenterDelegate: class {

    func didClose()

}
