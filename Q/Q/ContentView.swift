//
//  ContentView.swift
//  Q
//
//  Created by Jacob L on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Create.")
                    .font(.title)
                    .foregroundColor(Color.green)
                    .multilineTextAlignment(.center)
                Text("Find your LGBTQ+ friendly community.")
                    .font(.title)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                NavigationLink(destination: CreateAccount()) {
                    Text("Create Account")
                }
                .padding()
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
