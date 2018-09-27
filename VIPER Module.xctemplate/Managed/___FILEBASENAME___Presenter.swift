//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit


class ___VARIABLE_productName:identifier___Presenter {

    weak var delegate: ___VARIABLE_productName:identifier___Delegate?

    weak var dataSource: ___VARIABLE_productName:identifier___DataSource?
    weak var interactor: ___VARIABLE_productName:identifier___Interaction?
    weak var viewController: ___VARIABLE_productName:identifier___ViewActions?

    func reloadData() {
        // Update view controller, always on main thread
        DispatchQueue.main.async {
            self.viewController?.update()
        }
    }

}

extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___Notification {
    
}

extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___ViewEvents {
    
    func viewDidLoad() {
        reloadData() // Reload data the first time
    }
    
    func viewDidClose() {
        delegate?.didClose() // View controller dismissed
    }
    
}
