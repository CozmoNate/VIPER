//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation


protocol ___FILEBASENAMEASIDENTIFIER___: class {

    var anchor: AnyObject? { get set }
    
    weak var delegate: ___VARIABLE_productName:identifier___ViewControllerDelegate? { get set }
    
}

protocol ___VARIABLE_productName:identifier___ViewControllerDelegate: class {
    
    func viewDidLoad()
    func viewDidClose()

}
