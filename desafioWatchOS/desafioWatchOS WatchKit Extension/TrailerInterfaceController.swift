//
//  TrailerInterfaceController.swift
//  desafioWatchOS
//
//  Created by Amira Maythe Vasquez on 5/9/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import WatchKit
import Foundation


class TrailerInterfaceController: WKInterfaceController {

    @IBOutlet var movie: WKInterfaceMovie!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let url = Bundle.main.url(forResource: "Macacos" , withExtension: "mp4")
        self.movie.setMovieURL(url!)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
