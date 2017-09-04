//
//  Cinema.swift
//  desafioWatchOS
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 04/09/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import CoreLocation

class Cinema{
    let lat: CLLocationDegrees
    let long: CLLocationDegrees
    
    init(lat: CLLocationDegrees, long: CLLocationDegrees) {
        self.lat = lat
        self.long = long
    }
}
