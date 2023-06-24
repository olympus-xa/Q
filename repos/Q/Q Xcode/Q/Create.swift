//
//  Create.swift
//  Q
//
//  Created by Jacob L on 6/24/23.
//

import SwiftUI

struct Create: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("What page would you like to create today?")
                NavigationLink(destination: Buisness()){
                    Text("Buisness")
                    .foregroundColor(.black)}
                    NavigationLink(destination: Event()){
                        Text("Event")
                            .foregroundColor(.black)
                    }
                }
            }
    }
    
    struct Create_Previews: PreviewProvider {
        static var previews: some View {
            Create()
        }
    }
}
