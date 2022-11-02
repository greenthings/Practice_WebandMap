//
//  RestrauntStore.swift
//  tenth_jsontitlerestraunt
//
//  Created by greenthings on 2022/11/02.
//

import Foundation
import Combine

class RestrauntStore: ObservableObject{
    
    
    @Published var restraunts: [Restraunt]
    
    init(restraunts: [Restraunt]) {
        self.restraunts = restraunts
    }
}
