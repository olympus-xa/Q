//
//  LandingPage.swift
//  Q
//
//  Created by Jacob L on 6/24/23.
//

import SwiftUI

struct LandingPage: View {
    var body: some View {
        VStack{
            Spacer()
            NavigationView{
                Form {
                    Section {
                        Text("Search restaurants, events, venues, etc.")
                    }
                }
                .padding([.top], 50)
                .navigationTitle("Current Location")
            }
            
            Text("Trending Near You")
            
            ScrollView(.horizontal){
                HStack(spacing: 20) {
                    ForEach(0..<10) {
                        Text("Item \($0)")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .frame(width: 300, height: 200)
                            .background(.blue)
                    }
                }
            }
            Text("Events Happening Now")
            ScrollView(.horizontal){
                HStack(spacing: 20) {
                    ForEach(0..<10) {
                        Text("Item \($0)")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .frame(width: 300, height: 200)
                            .background(.blue)
                    }

                }
                
            }
            HStack{
                NavigationLink(destination: Create()) {
                    Text("Create")
                        .foregroundColor(.white)
                }
                NavigationLink(destination: Notifications()){
                    Text("Notifications")
                        .foregroundColor(.white)
                        .padding(20)
                }
                NavigationLink(destination: MyProfile()){
                    Text("My Profile")
                        .foregroundColor(.white)
                }
            
            }
            .frame(maxWidth:999999, maxHeight:50)
            .background(.blue)
        }
        }
    }

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
