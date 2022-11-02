//
//  ContentView.swift
//  tenth_jsontitlerestraunt
//
//  Created by greenthings on 2022/11/02.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var restrauntStore: RestrauntStore = RestrauntStore(restraunts: restrauntData)
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(restrauntStore.restraunts, id: \.self){
                    restraunt in
                    ListCell(restraunt: restraunt)
                }
            }
        }
    }
}

struct ListCell: View{
    var restraunt: Restraunt
    
    var body: some View{
        NavigationLink(destination: RestrauntDetailView(selectedRestraunt: restraunt)) {
            HStack{
                Text(restraunt.name)
                Spacer()
                Text(restraunt.recommender)
            }
        }
    }   
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
