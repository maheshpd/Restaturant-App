//
//  ContentView.swift
//  Restaturant App
//
//  Created by Mahesh Prasad on 09/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Home()
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
