//
//  DoubleExt.swift
//  WorkIt
//
//  Created by Dan Lindsay on 2018-05-02.
//  Copyright © 2018 Dan Lindsay. All rights reserved.
//

import Foundation

extension Double {
    func convertToClockTime() -> String {
        let minutes = Int(self) / 60
        let seconds = Int(self) % 60
        
        return String(format: "%0d:%02d", minutes, seconds)
        
    }
}
