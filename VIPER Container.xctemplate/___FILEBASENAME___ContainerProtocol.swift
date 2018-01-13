//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit


protocol ___VARIABLE_productName:identifier___ContainerProtocol: class {

    var willStartHandler: (() -> Void)? { get set }
    var didStartHandler: (() -> Void)? { get set }
    var willFinishHandler: (() -> Void)? { get set }
    var didFinishHandler: (() -> Void)? { get set }
    
    func presentViewController(from presentingViewController: UIViewController, animated: Bool) -> UIViewController?
    func dismissViewController(animated: Bool)
    
}

