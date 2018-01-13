//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit


class ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___PresenterProtocol, ___VARIABLE_productName:identifier___ViewControllerDelegate {

    weak var container: ___VARIABLE_productName:identifier___ContainerProtocol?
    weak var interactor: ___VARIABLE_productName:identifier___InteractorProtocol?
    weak var viewControler: ___VARIABLE_productName:identifier___ViewControllerProtocol?

    func reloadData() {
        
    }
    
    func viewDidLoad() {
        // Update presentation
    }

    func viewDidClose() {
        
        container?.dismissViewController(animated: false)
        
    }
}