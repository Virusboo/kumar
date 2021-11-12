//
//  Landmarks.swift
//  kumar
//
//  Created by zhaobo1 on 2021/11/12.
//

import SwiftUI
import CoreLocation

struct Landmarks: Hashable, Codable {
    var id : Int
    var name : String
    fileprivate var iamgeName : String
    fileprivate var coordinates : Coordinates
    var state : String
    var park : String
    var category : Category
    
    var locationCoordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}


extension Landmarks {
//    var image : Image {
//        image
//    }
}

struct Coordinates : Hashable, Codable {
    var latitude : Double
    var longitude: Double
}
