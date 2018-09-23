//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit


protocol ___VARIABLE_productName:identifier___Initiator {

    func start(with provisioning: ___VARIABLE_productName:identifier___Provisioning, completion: (() -> Void)?) -> UIViewController?
}

extension ___VARIABLE_productName:identifier___Initiator {

    func start(with provisioning: ___VARIABLE_productName:identifier___Provisioning) -> UIViewController? {
        return self.start(with: provisioning, completion: nil)
    }
}

protocol ___VARIABLE_productName:identifier___Container: class {
    
    var rootViewController: UIViewController? { get }
    
}
