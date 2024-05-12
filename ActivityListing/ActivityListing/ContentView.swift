//
//  ContentView.swift
//  ActivityListing
//
//  Created by Panu Tanavatavivat on 1/5/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
                Home().tabItem {
                    Image("home").font(.title)
                }
                Text("activity").tabItem {
                    Image("activity").font(.title)
                }
                Search().tabItem {
                    Image("search").font(.title)
                }
                Profile().tabItem {
                    Image("Setting").font(.title)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
