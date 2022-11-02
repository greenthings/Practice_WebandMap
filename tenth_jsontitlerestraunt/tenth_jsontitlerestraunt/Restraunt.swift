//
//  Restraunt.swift
//  tenth_jsontitlerestraunt
//
//  Created by greenthings on 2022/11/02.
//

import Foundation


struct Restraunt: Codable, Hashable{
    
    var name: String
    var recommender: String
    var category: String
    
    var latitude: Float
    var longitude: Float
    
    var url: String
    
//    enum CodingKeys: String, CodingKey {
//        case latitude
//        case longitude
//        case name
//        case category
//        case recommender
//        case url
//    }
}
