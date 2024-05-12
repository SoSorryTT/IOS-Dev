//
//  Profile.swift
//  ActivityListing
//
//  Created by Panu Tanavatavivat on 12/5/2567 BE.
//

import SwiftUI

struct Profile : View {
    var body: some View{
        VStack {
                    Image("Profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .padding(.bottom, 20)
                    
                    Text("Panu Tanavatavivat")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 5)
                    
                    Text("Kasetsart University Student")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Divider()
                        .padding(.vertical)
                    
                    InfoRow(icon: "phone.fill", text: "099-999-9999")
                    InfoRow(icon: "envelope.fill", text: "panu.tana@Ku.ac.th")
                    InfoRow(icon: "location.fill", text: "Bangkok, Thailand")
            
                    Spacer()
                }
                .padding()
    }
}

struct InfoRow: View {
    var icon: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
            
            Text(text)
                .foregroundColor(.black)
            
            Spacer()
        }
        .padding(.vertical, 5)
    }
}
