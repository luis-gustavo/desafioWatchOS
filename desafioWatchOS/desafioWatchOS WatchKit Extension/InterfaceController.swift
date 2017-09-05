//
//  InterfaceController.swift
//  desafioWatchOS WatchKit Extension
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 04/09/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import WatchKit
import Foundation
import CoreLocation


class InterfaceController: WKInterfaceController {
    
    struct Cinema {
        let lat: CLLocationDegrees
        let long: CLLocationDegrees
    }
    
    @IBOutlet var cinemasTable: WKInterfaceTable!
    var allMovies = [Cinema]()

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        intializeCinemas()
        cinemasTable.setNumberOfRows(allMovies.count, withRowType: "cinemasRow")
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func intializeCinemas(){
        let taguatingaShopping = Cinema(lat: -15.834949, long: -48.043623)
        let parkShopping = Cinema(lat: -15.827880, long: -47.954943)
        let pier21 = Cinema(lat: -15.817986, long: -47.875188)
        
        allMovies.append(taguatingaShopping)
        allMovies.append(parkShopping)
        allMovies.append(pier21)
    }

}
