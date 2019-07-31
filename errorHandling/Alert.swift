//
//  Alert.swift
//  errorHandling
//
//  Created by Brendan Milton on 31/07/2019.
//  Copyright © 2019 Brendan Milton. All rights reserved.
//

import Foundation
import UIKit

class Alert {
    
    // Showing alerts
    
    class func showBasic(title: String, message: String, vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
}
