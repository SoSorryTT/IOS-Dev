//
//  MiddleView.swift
//  ActivityListing
//
//  Created by Panu Tanavatavivat on 12/5/2567 BE.
//

import SwiftUI

struct MiddleView : View {
    
    @State var showFishingDetail = false
    @State var showStargazingDetail = false
    
    var body : some View{
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20){
                VStack(alignment: .leading, spacing: 12){
                    Button(action: {
                        self.showFishingDetail.toggle()
                    }) {
                        Image("Card1").renderingMode(.original)
                    }
                    
                    Text("Fishing Time").fontWeight(.heavy)
                    HStack(spacing: 5){
                        Image("map").renderingMode(.original)
                        Text("Faculty of Fisheries").foregroundColor(.gray)
                    }
                }.sheet(isPresented: $showFishingDetail) {
                    FishingDetail()
                }
                VStack(alignment: .leading, spacing: 12){
                    Button(action: {
                        self.showStargazingDetail.toggle()
                    }) {
                        Image("Card2").renderingMode(.original)
                    }
                    
                    Text("Stargazing camp").fontWeight(.heavy)
                    HStack(spacing: 5){
                        Image("map").renderingMode(.original)
                        Text("Hua Hin").foregroundColor(.gray)
                    }
                }.sheet(isPresented: $showStargazingDetail) {
                    StargazingDetail()
                }
            }
        }
    }
}

struct Rounded : Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 40, height: 40))
        return Path(path.cgPath)
    }
}
