//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Eric Andersen on 8/7/18.
//  Copyright © 2018 Devslopes. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case on
    case off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
