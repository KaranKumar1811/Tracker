//
//  ContentView.swift
//  Tracker
//
//  Created by Sandeep Jangra on 2021-05-03.
//

import SwiftUI

struct ContentView: View {
    let location : Location
    var body: some View {
        ScrollView{
            Image(location.heroPicture)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                
            Text(location.country)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.secondary)
            
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did You Know")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .padding(.horizontal)
            }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView
        {
            NavigationView
            {
                ContentView(location: Location.example)
            }
        }
    }
}
