//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit


class ___VARIABLE_productName:identifier___ViewController {

	weak var delegate: ___VARIABLE_productName:identifier___ViewControllerDelegate?
    
    var container:  ___VARIABLE_productName:identifier___Container?

    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()

        delegate?.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if isBeingDismissed || isMovingFromParentViewController {
            delegate?.viewDidClose()
        }
        // Check root view controller being dismissed
        else if let r = container?.rootViewController, r.isBeingDismissed || r.isMovingFromParentViewController {
            delegate?.viewDidClose()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ___VARIABLE_productName:identifier___ViewController: ___VARIABLE_productName:identifier___ViewControllerActions {
    
}
