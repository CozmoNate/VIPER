//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


// In some cases you will need to factorize the module. Use factory that produces object conforming to Initiator protocol
protocol ___VARIABLE_productName:identifier___Initiator {

    func start(with provisioning: ___VARIABLE_productName:identifier___Provisioning, completion: (() -> Void)?) -> UIViewController?
}

extension ___VARIABLE_productName:identifier___Initiator {

    func start(with provisioning: ___VARIABLE_productName:identifier___Provisioning) -> UIViewController? {
        return start(with: provisioning, completion: nil)
    }
}

protocol ___VARIABLE_productName:identifier___Container: AnyObject {
    
    var rootViewController: UIViewController? { get }
    
}
