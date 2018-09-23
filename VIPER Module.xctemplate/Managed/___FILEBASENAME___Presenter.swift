//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit


class ___VARIABLE_productName:identifier___Presenter {

    weak var delegate: ___VARIABLE_productName:identifier___PresenterDelegate?
    weak var dataSource: ___VARIABLE_productName:identifier___DataSource?
    weak var interactor: ___VARIABLE_productName:identifier___Interaction?
    weak var viewController: ___VARIABLE_productName:identifier___ViewControllerActions?

}

extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___PresenterActions {

    // Presenter methods used by interactor
    
    func reloadData() {
        // Update view controller
    }
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