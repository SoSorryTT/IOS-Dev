//
//  StargazingDetail.swift
//  ActivityListing
//
//  Created by Panu Tanavatavivat on 12/5/2567 BE.
//

import SwiftUI

struct StargazingDetail : View {
    var body: some View {
        VStack{
            Image("topbg").resizable().aspectRatio(1.35, contentMode: .fill).frame(width: UIScreen.main.bounds.width, height: 500).offset(y: -200).padding(.bottom, -200)
            
            GeometryReader{geo in
                VStack(alignment: .leading){
                    detailStargazingTop()
                    detailStargazingMiddle()
                    detailStargazingBottom()
                }
            }.background(Color.white).clipShape(Rounded()).padding(.top, -75)
        }
    }
}

struct detailStargazingMiddle : View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 5){
                Image("map").renderingMode(.original)
                Text("Hua Hin").foregroundColor(Color("bg"))
            }
            HStack(spacing: 8){
                ForEach(0..<5){_ in
                    Image(systemName: "star.fill").font(.body).foregroundColor(.yellow)
                }
                
            }
            Text("People").fontWeight(.heavy)
            Text("Number Of People In Your Group").foregroundColor(.gray)
            HStack(spacing: 6){
                ForEach(0..<5){i in
                    Button(action: {
                        
                    }) {
                        Text("\(i+1)").foregroundColor(.white).padding(20)
                    }.background(Color("bg")).cornerRadius(8)
                }
            }
        }.padding(.horizontal, 15)
    }
}

struct detailStargazingTop : View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10) {
            HStack{
                VStack(alignment: .leading) {
                    Text("Stargazing").fontWeight(.heavy).font(.largeTitle)
                    Text("Camping").fontWeight(.heavy).font(.largeTitle)
                }
                
                Spacer()
                
                Text("Free").foregroundColor(Color("bg")).font(.largeTitle)
            }
        }.padding()
    }
}

struct detailStargazingBottom : View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10) {
            Text("Description").fontWeight(.heavy)
            Text("Starting this summer, the starry sky of Kunigami Village has been shown in close-up, and see the starry sky at night.").foregroundColor(.gray)
            HStack(spacing: 30){
                Button(action: {
                    
                }) {
                    Image("Save").renderingMode(.original)
                }
                Button(action: {
                    
                }) {
                    HStack(spacing: 60){
                        Spacer().frame(width: 10)
                        Text("Register")
                        Image("arrow").renderingMode(.original)
                    }.foregroundColor(.white).padding()
                }.background(Color("bg")).cornerRadius(8)
            }.padding(.top, 15)
        }.padding()
    }
}
