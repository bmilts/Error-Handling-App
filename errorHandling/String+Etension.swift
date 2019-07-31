//
//  Sting+Etension.swift
//  errorHandling
//
//  Created by Brendan Milton on 31/07/2019.
//  Copyright © 2019 Brendan Milton. All rights reserved.
//

import Foundation

extension String {
    
    // Regular expression to validate email
    
    var isValidEmail: Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
    
}
