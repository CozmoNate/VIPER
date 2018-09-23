//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


class ___VARIABLE_productName:identifier___ViewController: UIViewController {

	weak var listener: ___VARIABLE_productName:identifier___ViewEvents?
    
    var container:  ___VARIABLE_productName:identifier___Container?

    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listener?.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if isBeingDismissed || isMovingFromParentViewController {
            listener?.viewDidClose()
        }
        // Check root view controller being dismissed
        else if let r = container?.rootViewController, r.isBeingDismissed || r.isMovingFromParentViewController {
            listener?.viewDidClose()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ___VARIABLE_productName:identifier___ViewController: ___VARIABLE_productName:identifier___ViewActions {
    
    func update() {
        DispatchQueue.main.async {
            // Update UI
        }
    }

}
