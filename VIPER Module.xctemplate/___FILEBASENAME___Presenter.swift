//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit


class ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___PresenterProtocol {

    weak var delegate: ___VARIABLE_productName:identifier___PresenterDelegate?

    weak var interactor: ___VARIABLE_productName:identifier___InteractorActions?
    weak var viewController: ___VARIABLE_productName:identifier___ViewControllerActions?

    func reloadData() {
        // Update view controller
    }
    
    // Presenter methods used by interactor
    
}

extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___InteractorDelegate {
    
}
extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___ViewControllerDelegate {
    
    func viewDidLoad() {
        reloadData() // Reload data the first time
    }
    
    func viewDidClose() {
        delegate?.didClose() // View controller dismissed
    }
    
}
