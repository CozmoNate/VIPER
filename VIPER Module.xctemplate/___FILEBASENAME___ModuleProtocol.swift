//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit


protocol ___FILEBASENAMEASIDENTIFIER___: class {

    weak var delegate: ___VARIABLE_productName:identifier___ModuleDelegate? { get set }
    
    var interactor: ___VARIABLE_productName:identifier___InteractorProtocol { get }
    var presenter: (___VARIABLE_productName:identifier___PresenterProtocol & ___VARIABLE_productName:identifier___ViewControllerDelegate) { get }
    
    func presentView(from presentingViewController: UIViewController, animated: Bool) -> Bool
    func closeView(animated: Bool)
    
}

protocol ___VARIABLE_productName:identifier___ModuleDelegate: class {
    
    func ___VARIABLE_viperFuncPrefix___ModuleWillStart(_ module: ___VARIABLE_productName:identifier___ModuleProtocol)
    func ___VARIABLE_viperFuncPrefix___ModuleDidFinish(_ module: ___VARIABLE_productName:identifier___ModuleProtocol)
    
}
