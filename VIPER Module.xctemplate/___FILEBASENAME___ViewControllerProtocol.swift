//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation


protocol ___VARIABLE_productName:identifier___ViewControllerProtocol: ___VARIABLE_productName:identifier___ViewControllerActions {

    var container:  ___VARIABLE_productName:identifier___ModuleProtocol? { get set }

    weak var delegate: ___VARIABLE_productName:identifier___ViewControllerDelegate? { get set }
    
}

protocol ___VARIABLE_productName:identifier___ViewControllerActions: class {
    
    // View controller methods updating views and utilized by presenter
    
}

protocol ___VARIABLE_productName:identifier___ViewControllerDelegate: class {
    
    /// ViewController loaded
    func viewDidLoad()

    /// ViewController dismissed
    func viewDidClose()

}
