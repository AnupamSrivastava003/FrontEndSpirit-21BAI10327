//
//  ContentView.swift
//  FrontEndSpirit
//
//  Created by SKUBI on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            lastPage()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            achievement()
                .tabItem{
                    Image(systemName: "trophy.fill")
                    Text("Home")
                }
            status()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            settings()
                .tabItem{
                    Image(systemName: "gear.fill")
                    Text("Home")
                }
            
            
        }
        .tint(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
