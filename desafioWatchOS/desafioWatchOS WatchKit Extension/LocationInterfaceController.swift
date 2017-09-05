//
//  LocationInterfaceController.swift
//  desafioWatchOS
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 05/09/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import WatchKit
import CoreLocation

class Cinema : NSObject {
    var lat: CLLocationDegrees
    var long: CLLocationDegrees
    var nome: String

    init(lat: CLLocationDegrees, long: CLLocationDegrees, nome: String) {
        self.lat = lat
        self.long = long
        self.nome = nome
    }
}


class LocationInterfaceController: WKInterfaceController, CLLocationManagerDelegate {



    @IBOutlet var mapObject: WKInterfaceMap!
//    var locationManager: CLLocationManager = CLLocationManager()
//    var mapLocation: CLLocationCoordinate2D?

    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)


//
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.delegate = self
//        locationManager.requestLocation()


        if let cinema : Cinema = context as! Cinema {
            let location = CLLocationCoordinate2DMake(cinema.lat, cinema.long)
            mapObject.setRegion(MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 14, longitudeDelta: 14)))
            mapObject.addAnnotation(location, with: .red)
            print(cinema.nome)
        }


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
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        
//        //Colocar aqui a as coordenadas que tem na model de cinemas
//        let currentLocation = CLLocation(latitude: -15.834949, longitude: -48.043623)
//        
//        let lat = currentLocation.coordinate.latitude
//        let long = currentLocation.coordinate.longitude
//        
//        self.mapLocation = CLLocationCoordinate2DMake(lat, long)
//        
//        let span = MKCoordinateSpanMake(0.1, 0.1)
//        
//        let region = MKCoordinateRegionMake(self.mapLocation!, span)
//        self.mapObject.setRegion(region)
//        
//        self.mapObject.addAnnotation(self.mapLocation!, with: .red)
//        
//        
//    }
//    
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//        print(error.localizedDescription)
//    }
//    
//    @IBAction func changeMapRegion(_ value: Float) {
//        
//        let degrees:CLLocationDegrees = CLLocationDegrees(value / 10)
//        
//        let span = MKCoordinateSpanMake(degrees, degrees)
//        let region = MKCoordinateRegionMake(mapLocation!, span)
//        
//        mapObject.setRegion(region)
//    }

    
}
