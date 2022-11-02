//
//  MapTap.swift
//  tenthn_webandmap
//
//  Created by greenthings on 2022/11/02.
//

import SwiftUI
import MapKit


struct MapTap: View {
    //37.584077, 126.982215
    
    let selectedRestraunt: Restraunt
    
    
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2DMake(37.584077, 126.982215), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    
    
    var body: some View {
        
        
        VStack{
            Map(coordinateRegion: $region, annotationItems: pointsOfInterest) { item in
                MapMarker(coordinate: item.coordinate, tint: .red)
            }
            
            .navigationTitle("Map")
        }
        .onAppear{
            region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: CLLocationDegrees(selectedRestraunt.latitude), longitude: CLLocationDegrees(selectedRestraunt.longitude)), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
        }
    }
}

//struct MapTap_Previews: PreviewProvider {
//    static var previews: some View {
//        MapTap(selectedRestraunt: <#Restraunt#>)
//    }
//}



struct AnnotatedItem: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

private var pointsOfInterest = [
    AnnotatedItem(name: "Times Square", coordinate: .init(latitude: 40.75773, longitude: -73.985708)),
    AnnotatedItem(name: "Flatiron Building", coordinate: .init(latitude: 40.741112, longitude: -73.989723)),
    AnnotatedItem(name: "Empire State Building", coordinate: .init(latitude: 40.748817, longitude: -73.985428))
]
