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
                ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                    .padding(100)
                Text("What page would you like to create today?")
                    .font(
                    Font.custom("Outfit", size: 25)
                    .weight(.bold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.27, green: 0.27, blue: 0.27))
                    .frame(width: 313, height: 64, alignment: .top)
                NavigationLink(destination: Buisness()){
                    Text("Buisness")
                        .font(
                        Font.custom("Outfit", size: 20)
                        .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.99))
}
                .padding()
                    NavigationLink(destination: Event()){
                        Text("Event")
                            .font(
                            Font.custom("Outfit", size: 20)
                            .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.99))

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
