//
//   SafariView.swift
//  tenthn_webandmap
//
//  Created by greenthings on 2022/11/02.
//

import SwiftUI
import SafariServices



struct SafariView: UIViewControllerRepresentable{
    
    let url: String
    
    
    
    func makeUIViewController(context: Context) -> some SFSafariViewController {
        
        return SFSafariViewController(url: URL(string: url)!)
    }
                                               
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            print("update")
    }
                                               
                                               

}

struct SafariView_Previews: PreviewProvider {
    
    static var previews: some View {
        SafariView(url:"https://stackoverflow.com/questions/44621344/error-cannot-convert-value-of-type-url-to-expected-argument-type-string")
    }
}
