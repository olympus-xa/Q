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
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/
            }
            }
        }
    }

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
