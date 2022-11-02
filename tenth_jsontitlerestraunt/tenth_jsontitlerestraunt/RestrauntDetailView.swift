//
//  RestrauntDetailView.swift
//  tenth_jsontitlerestraunt
//
//  Created by greenthings on 2022/11/02.
//

import SwiftUI

struct RestrauntDetailView: View {
    
    let selectedRestraunt: Restraunt

    @State private var isShowingSheet = false
    
    var body: some View {
        VStack(alignment: .trailing){
            Text(selectedRestraunt.name)
                .font(.largeTitle)
            Text(selectedRestraunt.category)
                .font(.title)
            Text(selectedRestraunt.recommender)
                .font(.headline)
            
     
            Button {
                isShowingSheet.toggle()
            } label: {
                Text("Where is this place?")
            }
            .sheet(isPresented: $isShowingSheet) {
             
                SafariView(url:selectedRestraunt.url)
            }
            
            MapTap(selectedRestraunt: selectedRestraunt)
            
        }
    }
}

struct RestrauntDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestrauntDetailView(selectedRestraunt: restrauntData[0])
    }
}
