//
//  SocialMedia.swift
//  Restaturant App
//
//  Created by Mahesh Prasad on 10/01/21.
//

import SwiftUI

struct SocialMedia: View {
    var body: some View {
        HStack(spacing: 40) {
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("fb").renderingMode(.original)
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("twitter").renderingMode(.original)
            })
        }
    }
}

struct SocialMedia_Previews: PreviewProvider {
    static var previews: some View {
        SocialMedia()
    }
}
