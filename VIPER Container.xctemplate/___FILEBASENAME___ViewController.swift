//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit


class ___VARIABLE_productName:identifier___ViewController: UIViewController, ___VARIABLE_productName:identifier___ViewControllerProtocol {

    var container: ___VARIABLE_productName:identifier___ContainerProtocol?
    
	weak var delegate: ___VARIABLE_productName:identifier___ViewControllerDelegate?

    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        delegate?.viewDidLoad()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if self.isBeingDismissed || self.isMovingFromParentViewController {
            delegate?.viewDidClose()
        }
    }

}
