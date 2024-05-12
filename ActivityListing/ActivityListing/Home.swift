//
//  Home.swift
//  ActivityListing
//
//  Created by Panu Tanavatavivat on 12/5/2567 BE.
//

import SwiftUI

struct Home : View {
    var body: some View{
        VStack(alignment: .leading, spacing: 6){
            HStack{
                Button(action: {
                    
                }) {
                    Image("menu").renderingMode(.original)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image("Profile").renderingMode(.original)
                }
            }
            
            Text("Find More").fontWeight(.heavy).font(.largeTitle).padding(.top,15)
            HStack{
                Button(action: {
                    
                }) {
                    Text("Activities").fontWeight(.heavy).foregroundColor(.black)
                }
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Competitive").foregroundColor(.gray)
                }
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Official").foregroundColor(.gray)
                }
                
            }.padding([.top], 30).padding(.bottom, 15)
            
            MiddleView()
            BottomView().padding(.top, 10)
            
        }.padding()
    }
}
