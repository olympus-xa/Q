//
//  LandingPage.swift
//  Q
//
//  Created by Jacob L on 6/24/23.
//

import SwiftUI

struct LandingPage: View {
    @State var search: String = ""
    var body: some View {
        VStack{
            //Spacer()
           NavigationView{
                TextField("Search",
                          text: $search,
                          prompt: Text("Search for bars, events, ect.")
                            .foregroundColor(.black)
                            .font(
                            Font.custom("Outfit", size: 20)
                            .weight(.semibold)
                            )
                          )
                .padding(5.0)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 5)
                }
                .padding(.horizontal)
                
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
                            .background(.purple)
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
                            .background(.purple)
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
                        .padding(10)
                }
                NavigationLink(destination: MyProfile()){
                    Text("My Profile")
                        .foregroundColor(.white)
                        .padding(10)
                }
                NavigationLink(destination: LandingPage()){
                    Text("Explore")
                        .foregroundColor(.white)
                }
            }
            .frame(maxWidth:999, maxHeight:50)
            .background(.blue)
        }
        }

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
