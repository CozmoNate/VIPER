//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation


protocol ___VARIABLE_productName:identifier___PresenterProtocol: class {

    weak var delegate: ___VARIABLE_productName:identifier___PresenterDelegate? { get set }

    weak var interactor: ___VARIABLE_productName:identifier___InteractorProtocol? { get set }
    weak var viewControler: ___VARIABLE_productName:identifier___ViewControllerProtocol? { get set }
    
    func reloadData()
    
    // Presenter methods utilized by interactor
    
}

protocol ___VARIABLE_productName:identifier___PresenterDelegate: class {

    func didClose()

}
