//
//  BottomView.swift
//  ActivityListing
//
//  Created by Panu Tanavatavivat on 12/5/2567 BE.
//

import SwiftUI

struct BottomView : View {
    var body: some View {
        VStack{
            HStack{
                Text("What you want ?").fontWeight(.heavy)
                Spacer()
                Button(action: {
                    
                }) {
                    Text("View all").foregroundColor(.gray)
                }
            }.padding([.top], 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 35){
                    Button(action: {
                    }) {
                        VStack(spacing: 8){
                            Image("mcard1").renderingMode(.original)
                            Text("Hiking").foregroundColor(.gray)
                        }
                    }
                    Button(action: {
                    }) {
                        VStack(spacing: 8){
                            Image("mcard4").renderingMode(.original)
                            Text("SkateBoard").foregroundColor(.gray)
                        }
                    }
                    Button(action: {
                    }) {
                        VStack(spacing: 8){
                            Image("mcard2").renderingMode(.original)
                            Text("Sky Diving").foregroundColor(.gray)
                        }
                    }
                    Button(action: {
                    }) {
                        VStack(spacing: 8){
                            Image("mcard3").renderingMode(.original)
                            Text("Ice Skating").foregroundColor(.gray)
                        }
                    }
                }
            }.padding(.leading, 20).padding([.top,.bottom], 15)
        }
    }
}
